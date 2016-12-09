json.extract! genre, :id, :name
json.series genre.series do |serie|
  json.partial! 'api/series/serie', serie: serie
end
