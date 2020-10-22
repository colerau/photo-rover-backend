class User < ApplicationRecord
  has_many :photos
  validates :username, presence: true, uniqueness: true

  # self.photos will prob be an array of strings
  def add_photo(img_url)
    self.photos << img_url
  end
end
