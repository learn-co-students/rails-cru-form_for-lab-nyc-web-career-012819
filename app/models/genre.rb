class Genre < ActiveRecord::Base
  has_many :songs
  has_many :songs, through: :artist
end
