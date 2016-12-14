json.array! @series do |serie|
  json.id serie.id
  json.title serie.title
  json.year serie.year
  json.description serie.description
  json.avg_rating serie.avg_rating
  json.movie serie.movie
  json.image_url asset_path(serie.image.url(:medium))
  json.episodes serie.episodes do |episode|
    json.partial! 'api/episodes/episode.json.jbuilder', episode: episode
  end
end
