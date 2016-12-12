# == Schema Information
#
# Table name: series_genres
#
#  id         :integer          not null, primary key
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  serie_id   :integer
#

class SeriesGenre < ActiveRecord::Base
  belongs_to :serie
  belongs_to :genre
end
