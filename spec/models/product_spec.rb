require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should validate_presence_of :name, :cost, :country_of_origin}
  it { should have_many :reviews}
end
