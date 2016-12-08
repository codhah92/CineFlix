class Serie < ActiveRecord::Base
  validates :title, :description, :year, presence: true

  has_many :series_genres, dependent: :destroy
  has_many :genres, through: :series_genres, source: :genre
  has_many :episodes, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
