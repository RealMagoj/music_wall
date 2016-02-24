class Track < ActiveRecord::Base

  belongs_to :user
  has_many :likes

  validates :title,
    presence: true
  validates :artist,
    presence: true

end
