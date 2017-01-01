export const updateRating = (reviewId, rating) => {
  return $.ajax({
    method: "PATCH",
    url: `api/reviews/${reviewId}`,
    data: { rating }
  });
};

export const createRating = (review) => {
  return $.ajax({
    method: "POST",
    url: `api/reviews`,
    data: { review }
  });
};

export const updateBody = (reviewId, body, rating) => {
  return $.ajax({
    method: "PATCH",
    url: `api/reviews/${reviewId}`,
    data: { body, rating }
  });
};

export const createBody = (review) => {
  return $.ajax({
    method: "POST",
    url: `api/reviews`,
    data: { review }
  });
};
