import React from 'react';

class SearchBar extends React.Component {
  constructor() {
    super();
    this.state = {
      queryString: "",
      searchClicked: false
    };

    this.handleChange = this.handleChange.bind(this);
    this.clickedSearchBar = this.clickedSearchBar.bind(this);
    this.unclickedSearchBar = this.unclickedSearchBar.bind(this);
  }

  handleChange(e) {
    e.preventDefault();
    if (this.state.queryString.length === ""){
      this.props.router.push('/browse');
    } else {
      this.props.router.push('/search');
    }
    this.setState({ queryString: e.currentTarget.value});
    this.props.searchTitles(this.state.queryString);
  }

  clickedSearchBar() {
    this.setState({ searchClicked: true }, () => {
        this.inputNode.focus();
      }
    );
  }

  unclickedSearchBar() {
    if (this.state.queryString.length === 0){
      this.setState({ searchClicked: false});
    }
  }

  renderSearchBar() {
    if (this.props.alwaysOpen || this.state.searchClicked) {
      return (
        <div>
          <input
            ref={ inputNode => this.inputNode = inputNode }
            className='search-form-clicked'
            type='text'
            onChange={this.handleChange}
            value={this.state.queryString}
            onBlur={ this.unclickedSearchBar}
            placeholder='Titles, genres'>
          </input>
        </div>
      );
    } else {
      return (<div className='search-form-unclicked' onClick={this.clickedSearchBar}>🔍 Search</div>);
    }
  }

  render () {
    return (
      <div className='search-bar group'>
        {this.renderSearchBar()}
      </div>
    );
  }
}

export default SearchBar;
