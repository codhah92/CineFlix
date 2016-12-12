json.extract! episode, :id, :title, :synopsis, :video_url, :episode_number, :serie_id
json.image_url asset_path(episode.image.url(:medium))
