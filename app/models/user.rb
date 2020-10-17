class User < ApplicationRecord
  has_many :photos
  validates :username, presence: true, uniqueness: true
end
