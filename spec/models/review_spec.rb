require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should validate_presence_of :author; :content_body; :rating}
  it { should belong_to :product}
end
