class Movie < ActiveRecord::Base
  mount_uploader :poster, PosterUploader

  validates :title, :presence => true
end
