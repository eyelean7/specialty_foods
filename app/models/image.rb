class Image < ApplicationRecord
  validates :link, :presence => true
  has_many :sentences
end
