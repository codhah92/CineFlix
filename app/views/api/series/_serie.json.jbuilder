json.extract! serie, :id, :title, :year, :description, :movie, :avg_rating
json.episodes serie.episodes do |episode|
  json.partial! 'api/episodes/episode.json.jbuilder', episode: episode
end
json.image_url asset_path(serie.image.url(:medium))
json.avg_rating serie.get_avg_rating
json.review Review.find_by(user: current_user, serie: serie)
