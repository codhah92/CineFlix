# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  serie_id   :integer          not null
#  user_id    :integer          not null
#  rating     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  body       :text
#

class Review < ActiveRecord::Base
  validates :serie, :user, presence: true
  validates :user_id, uniqueness: { scope: :serie_id }

  belongs_to :serie
  belongs_to :user
end
