class Sentence < ApplicationRecord
  validates :content, :author, :presence => true
  validates :content, length: { maximum: 140,
    too_long: "140 characters is the maximum allowed" }
  belongs_to :story
end
