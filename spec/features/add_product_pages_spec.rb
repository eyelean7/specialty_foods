require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Make a new product'
    fill_in "Name", :with => 'Donuts'
    fill_in "Cost", :with => '10.00'
    fill_in "Country of origin", :with => 'America'
    click_on 'Create Product'
    expect(page).to have_content 'Donuts'
  end

  it "gives error when no name is entered" do
  visit new_product_path
  click_on 'Create Product'
  expect(page).to have_content 'errors'
end

end
