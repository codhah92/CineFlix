import React from 'react';
import SearchIndexItem from './search_index_item';
import DashboardContainer from '../dashboard/dashboard_container';

class Search extends React.Component {
  constructor() {
    super();
    this.state = {
      queryString: "",
      searchClicked: false,
      displayOpacity: false
    };
  }

  componentDidMount() {
    this.setState({displayOpacity: true });
  }

  render () {
    const searchIndexItems = this.props.searchedTitles.map((title, id) => {
      return (
        <ul key={title.id} className="search-carousel group">
          <li key={id} className="search-index-item">
            <SearchIndexItem
              currentUser={this.props.currentUser}
              addSerieToMyList={this.props.createMyListItem}
              removeSerieFromMyList={ this.props.removeMyListItem }
              title={ title }
              favorites={this.props.favorites}
              updateRating={this.props.updateRating}
              createRating={this.props.createRating}
              updateReviewBody={this.props.updateReviewBody}
              createReviewBody={this.props.createReviewBody}
              />
          </li>
        </ul>
      );
    });

    let className='search-results-container group';

    if (this.state.displayOpacity) {
      className += ' display-search-results';
    }

    return (
      <div className='search group'>
        <DashboardContainer alwaysOpen={ true }/>
        <div className={className}>
          <p className="search-results group">Search Results: </p>
          <div className="searchCarouselIndex group">
            <div className="search-item-list">{searchIndexItems}</div>
          </div>
        </div>
      </div>
    );
  }
}

export default Search;
