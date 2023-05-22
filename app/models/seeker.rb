class Seeker < ApplicationRecord
  has_secure_password

  has_one :seeker_detail

end
