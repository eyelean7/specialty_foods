require 'rail_helper'

describe "the add a story process" do
  it "adds a new story" do
    visit stories_path
    click_link 'New Story'
    fill_in 'title', :with => 'Bryan\'s Adventures in Vancouver'
    click_on 'Create Story'
    expect(page).to have_content 'Stories'
  end
end
