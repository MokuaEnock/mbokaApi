class SeekerDetail < ApplicationRecord
  has_one_attached :avatar
  belongs_to :seeker
end
