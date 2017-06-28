require 'rails_helper'

RSpec.describe Sentence, type: :model do
  it { should validate_presence_of :content; :author}
  it { should belong_to :story; :image}
end
