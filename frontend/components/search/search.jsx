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
    this.setState({displayOpacity: true })
  }

  render () {
    const searchIndexItems = this.props.searchedTitles.map((title) => {
      return (
        <ul className="search-carousel group">
          <li key={title.id} className="search-index-item">
            <SearchIndexItem
              addSerieToMyList={this.props.createMyListItem}
              removeSerieFromMyList={ this.props.removeMyListItem }
              title={ title }
              favorites={this.props.favorites}
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
          {searchIndexItems}
        </div>
      </div>
    );
  }
}

export default Search;
