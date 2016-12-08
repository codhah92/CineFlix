json.partial! '/api/series/serie', serie: @serie
json.extract! @serie, :year, :description, :avg_rating, :genres, :episodes
