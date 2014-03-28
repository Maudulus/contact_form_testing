require 'spec_helper'
feature "User views the index page", %q{
  As a site owner/user
  I want to view information on the index page
  so that I can know everyones information
  } do

  it "sees a page title" do
    visit '/contacts'
    expect(page).to have_content "All the Contacts"
  end

  it "sees all the contacts on the index page" do
    contact1 = Contact.create!(first_name:"John", last_name: "theBaptist",subject: "baptizing", description: "wreaking havoc", email: "john@baptist.com")
    contact2 = Contact.create!(first_name:"Johnny", last_name: "Baptizer",subject: "baptizing", description: "wreaking havoc", email: "john@baptist.com")
    visit '/contacts'

    expect(page).to have_content "John"
    expect(page).to have_content "john@baptist.com"
  end


end
