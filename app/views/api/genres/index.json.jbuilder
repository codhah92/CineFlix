json.array! @genres do |genre|
  json.partial! 'genre', genre: genre
end
