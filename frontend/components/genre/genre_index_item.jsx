import React from 'react';
import { Link, withRouter } from 'react-router';
import SerieIndexItem from './serie_index_item';
import Slider from 'react-slick';

class GenreIndexItem extends React.Component {
  render () {

    const settings = {
        slidesToShow: 6,
        slidesToScroll: 1,
        infinite: true
      };

    let seriesContent;
    if( this.props.genre.series.length === 0 ){
      seriesContent = <label className='notFound'>No Series Found!</label>;
    } else {
      seriesContent = <Slider {...settings}>
        { this.props.genre.series.map((serie, i) => (
          <div key={i}>
          <SerieIndexItem
            key={serie.id}
            className="serie-index-item group"
            serie={ serie }
            addSerieToMyList={ this.props.addSerieToMyList }
            genre={ this.props.genre }
            removeSerieFromMyList={ this.props.removeSerieFromMyList }
            favorites={ this.props.favorites }
          />
          </div>
        )) }
      </Slider>;
    }

    return (
      <div className='videoCarousel'>
        <div className="carouselContainer">
          {seriesContent}
        </div>
      </div>
    );

  }
}
export default GenreIndexItem;
