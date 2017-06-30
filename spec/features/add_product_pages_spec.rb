require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Make a new product'
    fill_in "Title", :with => 'Bryan\'s Adventures in Vancouver'
    click_on 'Create Product'
    expect(page).to have_content 'Bryan\'s Adventures in Vancouver'
  end

end
