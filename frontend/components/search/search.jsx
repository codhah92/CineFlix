import React from 'react';
import SearchIndexItem from './search_index_item';
import DashboardContainer from '../dashboard/dashboard_container';

class Search extends React.Component {
  constructor() {
    super();
    this.state = {
      queryString: "",
      searchClicked: false
    };

    // this.handleChange = this.handleChange.bind(this);
    // this.clickedSearchBar = this.clickedSearchBar.bind(this);
    // this.unclickedSearchBar = this.unclickedSearchBar.bind(this);
  }
  //
  // handleChange(e) {
  //   e.preventDefault();
  //   if (this.state.queryString.length === ""){
  //     this.props.router.push('/browse');
  //   } else {
  //     this.props.router.push('/search');
  //   }
  //   this.setState({ queryString: e.currentTarget.value});
  //   this.props.searchTitles(this.state.queryString);
  // }
  //
  // clickedSearchBar() {
  //   this.setState({ searchClicked: true});
  // }
  //
  // unclickedSearchBar() {
  //   if (this.state.queryString.length === 0){
  //     this.setState({ searchClicked: false});
  //   }
  // }
  //
  // renderSearchBar() {
  //   if (this.state.searchClicked) {
  //     return (
  //       <div>
  //         <input
  //           ref='searchBar'
  //           className='search-form-clicked'
  //           type='text'
  //           onChange={this.handleChange}
  //           value={this.state.queryString}
  //           placeholder='Titles, genres'>
  //         </input>
  //         <div className='rest-of-page' onClick={ this.unclickedSearchBar } ></div>
  //       </div>
  //     );
  //   } else {
  //     return (<div className='search-form-unclicked' onClick={this.clickedSearchBar}>🔍 Search</div>);
  //   }
  // }

  render () {
    // const titles = this.props.searchedTitles.map((title) => {
    //   return (<li>{title.title}</li>);
    // });
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

    return (
      <div className='search group'>
        <DashboardContainer alwaysOpen={ true }/>
        <div className='search-results-container group'>
          <p className="search-results group">Search Results: </p>
          {searchIndexItems}
        </div>
      </div>
    );
  }
}

export default Search;
