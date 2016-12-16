export const searchTitles = (queryString) => {
  return $.ajax({
    method: 'GET',
    url: `api/search?query=${queryString}`
  });
};

export const searchGenres = (queryString) => {
  return $.ajax({
    method: 'GET',
    url: `api/genres/search?query=${queryString}`
  });
}; 
