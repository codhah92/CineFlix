import React from 'react';
import { Link, withRouter } from 'react-router';
import SearchInput, {createFilter} from 'react-search-input';

class Search extends React.Component {
  constructor() {
    super();
    this.state = {
      searchTerm: ''
    };

    this.searchUpdated = this.searchUpdated.bind(this);
  }

  searchUpdated (term) {
    this.setState({searchTerm: term});
  }

  render () {
    const KEYS_TO_FILTERS = ['title'];
    const filteredSeries = (all_series).filter(createFilter(this.state.searchTerm, KEYS_TO_FILTERS))

    return (
      <div>
        <SearchInput className="search-input" onChange={this.searchUpdated} />
        {filteredSeries.map(serie => {
          return (
            <div className="serie" key={serie.id}>
              <div className="title">{serie.title}</div>
            </div>
          );
        })}
      </div>
    );
  }
}

export default Search;
