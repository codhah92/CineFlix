export const createFavorite = (serie_id) => {
  return $.ajax({
    method: 'POST',
    url: `api/favorites`,
    data: { favorite: { serie_id } }
  });
};

export const removeFavorite = (id) => {
  return $.ajax ({
    method: 'DELETE',
    url: `api/favorites/${id}`
  });
};
