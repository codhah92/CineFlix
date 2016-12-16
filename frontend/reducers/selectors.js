export function searchResults (state) {

  function doesntIncludeSeries(array, serie) {
    for (let i = 0; i < array.length; i++) {
      if (array[i].id === serie.id) {
        return false;
      }
    }

    return true;
  }

  let results = [];
  if (state.search.titles){
    results = state.search.titles;
  }

  if (state.search.genres){
    state.search.genres.forEach((genre) => {
      if (genre.length !== 0) {
        genre.forEach((serie) => {
          if (doesntIncludeSeries(results, serie)) {
            results.push(serie);
          }
        });
      }
    });
  }
  return results;
}
