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
