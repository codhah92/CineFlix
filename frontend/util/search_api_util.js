export const searchTitles = (queryString) => {
  return $.ajax({
    method: 'GET',
    url: `api/search?query=${queryString}`
  });
};
