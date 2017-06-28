class Story < ApplicationRecord
  validates :title, :presence => true
  has_many :sentences

  scope :most_recent, -> { order(created_at: :desc).limit(5)}

  scope :most_popular, -> {
    select("stories.id, stories.title, count(sentences.id) as sentences_count")
    .joins(:sentences)
    .group('stories.id')
    .order('sentences_count DESC')
    .limit(3)
  }
end
