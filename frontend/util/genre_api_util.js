export const fetchGenres = () => {
  return $.ajax({
    method: 'GET',
    url: 'api/genres'
  });
};

export const fetchGenre = (id) => {
  return $.ajax({
    method: 'GET',
    url: `api/genres/${id}`
  });
};
