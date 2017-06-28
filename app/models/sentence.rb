class Sentence < ApplicationRecord
  validates :content, :author, :presence => true
  belongs_to :story
end
