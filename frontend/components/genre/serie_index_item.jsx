import React from 'react';
import { Link, withRouter } from 'react-router';
import Modal from 'react-modal';
import EpisodeIndexItem from './episode_index_item';
import StarRatingComponent from 'react-star-rating-component';
import VideoPlayer from '../video_player/video_player';

class SerieIndexItem extends React.Component {
  constructor (props) {
    super(props);
    this.state = {
      modalIsOpen: false,
      rating: props.serie.avg_rating,
      currentVideoId: ""
      // props.serie.episodes[0].video_url
    };

    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.changeCurrentVideoId = this.changeCurrentVideoId.bind(this);
  }

  onStarClick(nextValue, prevValue, name) {
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

  render () {
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
    const episodeIndexItems = this.props.serie.episodes.map((episode, id) => {
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
    });

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
              <StarRatingComponent
                name='rating'
                className='rating'
                starCount={5}
                value={this.state.rating}
                onStarClick={this.onStarClick.bind(this)} />
              <p className="serie-year">{this.props.serie.year}</p>
              <p className="serie-description">
                {this.props.serie.description}
              </p>
            </section>
            <section className="other-details">
              <button
                className="addMyList"
                onClick={ () => this.props.addSerieToMyList(this.props.serie)}>
                MyListADD
              </button>
              <p className="serie-genres">Genres: {this.props.serie.genres}</p>
            </section>
          </div>
          <section className="episode-index-items group">
            {episodeIndexItems}
          </section>
        </Modal>
      </div>
    );
  }
}

export default SerieIndexItem;
