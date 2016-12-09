# == Schema Information
#
# Table name: series_genres
#
#  id         :integer          not null, primary key
#  series_id  :integer
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SeriesGenre < ActiveRecord::Base
  belongs_to :serie
  belongs_to :genre
end
