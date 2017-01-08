json.extract! serie, :id, :title, :year, :description, :movie, :genres, :reviews
json.episodes serie.episodes do |episode|
  json.partial! 'api/episodes/episode.json.jbuilder', episode: episode
end
json.image_url asset_path(serie.image.url(:medium))
json.avg_rating @all_ratings && @all_ratings[serie.id]
# json.review Review.find_by(user: current_user, serie: serie)
# json.reviews serie.reviews.select { |review| review.user_id == current_user.id }
