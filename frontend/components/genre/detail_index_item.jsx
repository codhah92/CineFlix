import React from 'react';
import { Link, withRouter } from 'react-router';
import StarRatingComponent from 'react-star-rating-component';

class DetailIndexItem extends React.Component {
  render() {
    return (
      <div>
        <StarRatingComponent
          name='member-rating'
          className='member-rating'
          starCount={5}
          editing={false}
          value={this.props.review.rating}
          starColor='Red'/>
        <p className="review-body">{this.props.review.body}</p>
      </div>
    );
  }
}

export default DetailIndexItem;
