import React from 'react';
import { Link, withRouter } from 'react-router';
import Modal from 'react-modal';
import DetailIndexItem from './detail_index_item';
import EpisodeIndexItem from './episode_index_item';
import StarRatingComponent from 'react-star-rating-component';
import VideoPlayer from '../video_player/video_player';

class SerieIndexItem extends React.Component {
  constructor (props) {
    super(props);
    const currentUserReview = this.props.serie.reviews.find((review) => {
      if (review.user_id === this.props.currentUser.id) {
        return review;
      }
    });
    if (currentUserReview) {
      this.state = {
        episodesTab: true,
        modalIsOpen: false,
        rating: currentUserReview.rating,
        currentVideoId: props.serie.episodes[0] ? props.serie.episodes[0].video_url : ""
      };
    } else {
      this.state = {
        episodesTab: true,
        modalIsOpen: false,
        rating: props.serie.avg_rating[0] ? parseFloat(props.serie.avg_rating[0].avg) : 0,
        currentVideoId: props.serie.episodes[0] ? props.serie.episodes[0].video_url : ""
      };
    }

    this.handleMyListClick = this.handleMyListClick.bind(this);
    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.changeCurrentVideoId = this.changeCurrentVideoId.bind(this);
    this.onStarClick = this.onStarClick.bind(this);
    this.activateDetailsTab = this.activateDetailsTab.bind(this);
    this.activateEpisodesTab = this.activateEpisodesTab.bind(this);
  }

  onStarClick(nextValue, prevValue, name) {
    let currentUserId = this.props.currentUser.id;
    const currentUserReview = this.props.serie.reviews.find((review) => {
      if (review.user_id === this.props.currentUser.id) {
        return review;
      }
    });
    if (!!currentUserReview) {
      this.props.updateRating(currentUserReview.id, nextValue);
    } else {
      this.props.createRating({ rating: nextValue, serie_id: this.props.serie.id});
    }
    this.setState({ rating: nextValue });
  }

  openModal() {
    this.setState({modalIsOpen: true});
  }

  closeModal() {
    this.setState({modalIsOpen: false});
  }

  changeCurrentVideoId(id) {
    this.setState({ currentVideoId: id});
  }

  handleMyListClick(serie) {
    if (this.isSerieInMyList()) {
      this.props.removeSerieFromMyList(serie);
    } else {
      this.props.addSerieToMyList(serie);
    }
  }

  isSerieInMyList() {
    for (let i = 0; i < this.props.favorites.series.length; i++) {
      if (this.props.favorites.series[i].id === this.props.serie.id) {
        return true;
      }
    }
    return false;
  }

  renderMyListToggle() {
    let myListButtonText;
    if (this.isSerieInMyList()) {
      myListButtonText = String.fromCharCode(10003) + " MY LIST";
    } else {
      myListButtonText = String.fromCharCode(65291) + " MY LIST";
    }
    return (
      <button
        className='my-list-button'
        onClick={ () => this.handleMyListClick(this.props.serie)}>{myListButtonText}</button>
    );
  }

  activateEpisodesTab() {
    this.setState({ episodesTab: true });
    $('.episodes-red-bar').removeClass('hidden');
    $('.details-red-bar').addClass('hidden');
  }

  activateDetailsTab() {
    this.setState({ episodesTab: false });
    $('.details-red-bar').removeClass('hidden');
    $('.episodes-red-bar').addClass('hidden');
  }

  render () {
    let starRatingComponent;
      const allReviewedUserIds = this.props.serie.reviews.map((review) => {
        return review.user_id;
      });

      if (this.props.currentUser === null){
        return <div></div>;
      } else {
        if (allReviewedUserIds.includes(this.props.currentUser.id)) {
          starRatingComponent = (<StarRatingComponent
              name='rating'
              className='rating'
              starCount={5}
              value={this.state.rating}
              starColor='Gold'
              onStarClick={this.onStarClick.bind(this)} />
          );
        } else {
          starRatingComponent = (
            <StarRatingComponent
              name='rating'
              className='rating'
              starCount={5}
              value={this.state.rating}
              starColor='Red'
              onStarClick={this.onStarClick.bind(this)} />
          );
        }
      }
    const customStyles = {
      overlay : {
        position          : 'fixed',
        top               : 0,
        left              : 0,
        right             : 0,
        bottom            : 0,
        backgroundColor   : 'rgba(0, 0, 0, 0.75)',
        transition        : '0.8s'
      },
      content : {
        position                   : 'absolute',
        top                        : '0',
        left                       : '40px',
        right                      : '40px',
        bottom                     : '0',
        background                 : '#141414',
        overflow                   : 'auto',
        WebkitOverflowScrolling    : 'touch',
        outline                    : 'none',
        padding                    : '0',
        color                      : 'black',
        width                      : '70%',
        margin                     : '0 auto'
      },
    };

    const detailIndex = this.props.serie.reviews.map((review, id) => {
      return (<div key={review.id} className="detail-group group">
        <DetailIndexItem
          review={review}
        />
      </div>
      );
    });

    const episodeIndexItems = this.props.serie.episodes.map((episode, id) => {
      if (episode.video_url === this.state.currentVideoId) {
        return (<div key={episode.id} className="episode-group group">
          <EpisodeIndexItem
            episode={episode}
            changeIt={this.changeCurrentVideoId}/>
          <p className="current-episode-title">
            ▶ {episode.title}
          </p>
          <p className="episode-synopsis">{episode.synopsis}</p>
        </div>
        );
      } else {
      return (
        <div key={episode.id} className="episode-group group">
          <EpisodeIndexItem
            episode={episode}
            changeIt={this.changeCurrentVideoId}/>
          <p className="episode-title">
            {episode.episode_number}. {episode.title}
          </p>
          <p className="episode-synopsis">{episode.synopsis}</p>
        </div>
      );
    }});

    const genres = this.props.serie.genres.map((genre) => {
      return (
        <li key={genre.id} className="series-genre">{genre.name}</li>
      );
    });

    const bottomDetails = this.state.episodesTab ? episodeIndexItems : detailIndex;

    return (
      <div className="serie-group group">
        <img src={this.props.serie.image_url}
          className="serie-image"
          onClick={this.openModal}/>
        <Modal
          className="modal"
          isOpen={this.state.modalIsOpen}
          onRequestClose={this.closeModal}
          style={customStyles}
          contentLabel="Example Modal"
        >
            <section className="video-player">
              <VideoPlayer videoId={this.state.currentVideoId}/>
            </section>
          <div className="top-modal group">
            <section className="description-info group">
              <p className="serie-title">{this.props.serie.title}</p>
              <p className="rating">{ starRatingComponent }</p>
              <p className="serie-year">{this.props.serie.year}</p>
              <p className="serie-description">
                {this.props.serie.description}
              </p>
            </section>
            <section className="other-details">
              <p>{this.renderMyListToggle()}</p>
              <ul className="serie-genres">Genres: {genres}</ul>
            </section>
          </div>
          <section className="episode-index-items group">
            <header className="tabs">
              <label className="episodes-tab" onClick={ this.activateEpisodesTab }>Episodes
                <span className="episodes-red-bar"></span>
              </label>
              <label className="details-tab" onClick={ this.activateDetailsTab }>Details
                <span className="details-red-bar hidden"></span>
              </label>
            </header>
            {bottomDetails}
          </section>
        </Modal>
      </div>
    );
  }
}

export default SerieIndexItem;
