json.extract! serie, :id, :title, :year, :description, :avg_rating, :movie
json.episodes serie.episodes do |episode|
  json.partial! 'api/episodes/episode', episode: episode
end
json.image_url asset_path(serie.image.url(:medium))
