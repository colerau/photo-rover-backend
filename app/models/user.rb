class User < ApplicationRecord
  has_many :photos
  validates :username, presence: true, uniqueness: true

  # self.photos will prob be an array of strings
  def add_photo(nasa_photo_id)
    self.photos << nasa_photo_id
  end
end
