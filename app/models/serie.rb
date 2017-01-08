# == Schema Information
#
# Table name: series
#
#  id                 :integer          not null, primary key
#  title              :string           not null
#  year               :integer          not null
#  description        :text             not null
#  avg_rating         :integer          default(0)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  movie              :boolean          default(FALSE)
#

class Serie < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "226.23x127.25", thumb: "85x50" }, default_url: "default_logo.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, :description, :year, presence: true

  has_many :series_genres, dependent: :destroy
  has_many :genres, through: :series_genres, source: :genre
  has_many :episodes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy

  def self.all_ratings
    ratings = {}
    self
      .select('series.*, AVG(reviews.rating) AS avg_rating')
      .joins("LEFT OUTER JOIN reviews ON reviews.serie_id = series.id")
      .group('series.id')
      .each do |s|
        ratings[s.id] = s.avg_rating
      end
    ratings
  end

  def get_avg_rating
    reviews.select('AVG(rating) as avg_rating').group(:serie_id)
  end

  def user_rating(user)
    reviews.select('rating').where('user_id = ?', user.id)
  end
end
