require 'spec_helper'

feature "User views the index page", %q{
  As a site owner
  I want to have a delete button on the index page
  so that I can delete information as per my requirements
  } do

  it "finds a deletion button on the page" do
    page.has_selector?('Destroy')

    # visit '/contacts'
#how do I select this using css selector?
  end
  # it "allows the user to delete a specific user on the page" do
  #   visit '/contacts'
  #   click_link("Destroy")


  # end
end
