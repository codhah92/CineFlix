# == Schema Information
#
# Table name: favorites
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  serie_id   :integer
#

class Favorite < ActiveRecord::Base
  validates :serie_id, :user_id, presence: true
  validates :user_id, uniqueness: { scope: :serie_id }

  belongs_to :serie
  belongs_to :user
end
