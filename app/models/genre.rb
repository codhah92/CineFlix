# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :series_genres
  has_many :series, through: :series_genres, source: :serie
  has_many(
    :series_with_rating,
    -> { joins(:reviews).select('series.*, AVG(rating) AS avg_rating').group('series.id') },
    # -> {
      # self
      #   .joins("LEFT OUTER JOIN reviews ON reviews.serie_id = series.id")
      #   .group('series.id')
      #   .select('series.*, AVG(reviews.rating) AS avg_rating')
    # },
    through: :series_genres,
    source: :serie
  )
  has_many :favorites, through: :series, source: :favorites
  # reviews.select('AVG(rating)').group(:serie_id)
end
