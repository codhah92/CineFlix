import React from 'react';
import { Link, withRouter } from 'react-router';
import Modal from 'react-modal';
import EpisodeIndexItem from './episode_index_item';

class SerieIndexItem extends React.Component {
  constructor () {
    super();
    this.state = {
      modalIsOpen: false
    };

    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }

  openModal() {
    this.setState({modalIsOpen: true});
  }

  closeModal() {
    this.setState({modalIsOpen: false});
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
        top                        : '40px',
        left                       : '40px',
        right                      : '40px',
        bottom                     : '40px',
        border                     : '1px solid #ccc',
        background                 : '#ccc',
        overflow                   : 'auto',
        WebkitOverflowScrolling    : 'touch',
        borderRadius               : '4px',
        outline                    : 'none',
        padding                    : '20px',
        color                      : 'black',
        width                      : '70%',
        margin                     : '0 auto'
      },
    };

    const episodeIndexItems = this.props.serie.episodes.map((episode, id) => {
      return (
        <div key={episode.id} className="episode-name">
          {episode.title}
          <EpisodeIndexItem episode={episode} />
        </div>
      );
    });

    return (
      <div>
        <li className="serie-image">
          <img src={this.props.serie.image_url} onClick={this.openModal}/>
        </li>
        <Modal
          isOpen={this.state.modalIsOpen}
          onRequestClose={this.closeModal}
          style={customStyles}
          contentLabel="Example Modal"
        >

          <h2 ref="subtitle">Hello</h2>
          <button onClick={this.closeModal}>close</button>
          <div>I am a modal</div>
          <form>
            <input />
            <button>tab navigation</button>
            <button>stays</button>
            <button>inside</button>
            <button>the modal</button>
          </form>
          {episodeIndexItems}
        </Modal>
      </div>
    );
  }
}

export default SerieIndexItem;
