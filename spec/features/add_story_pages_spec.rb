require 'rails_helper'

describe "the add a story process" do
  it "adds a new story" do
    visit stories_path
    click_link 'Make a new story'
    fill_in "Title", :with => 'Bryan\'s Adventures in Vancouver'
    click_on 'Create Story'
    expect(page).to have_content 'Bryan\'s Adventures in Vancouver'
  end

end
