export const fetchSerie = (id, success) => {
  $.ajax({
    method: 'GET',
    url: `api/series/${id}`,
    success
  });
};
