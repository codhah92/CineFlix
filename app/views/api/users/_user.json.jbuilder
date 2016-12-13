json.extract! user, :id, :username, :email
json.favorites do
  json.series user.favorited_series do |serie|
    json.partial! 'api/series/serie.json.jbuilder', serie: serie
  end
end
