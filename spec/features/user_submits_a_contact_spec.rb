require 'spec_helper'
feature "User inputs their information", %q{
  As a User
  I want to input my information
  So that it can be passed on to the site owner
  } do

    context "with valid attributes" do
      it "creates a contact submission " do
        visit '/contacts/new'

        fill_in "contact_first_name", with: "John"
        fill_in "contact_last_name", with: "McGreggor"
        fill_in "Subject", with: "Your Biggest Fan"
        fill_in "Description", with: "You're the best!"
        fill_in "Email", with: "jmcgreggor@gmail.com"
        click_on "Create Contact"

        expect(page).to have_content "Contact was successfully created"
      end
    end
    it "gives an error when not passed the last_name field" do
      visit '/contacts/new'

      fill_in "contact_first_name", with: "John"
      fill_in "Subject", with: "Your Biggest Fan"
      fill_in "Description", with: "You're the best!"
      fill_in "Email", with: "jmcgreggor@gmail.com"
      click_on "Create Contact"

      expect(page).to have_content "Last name can't be blank"
    end
    it "gives an error when not passed the first_name field" do
      visit '/contacts/new'

      fill_in "contact_last_name", with: "McGreggor"
      fill_in "Subject", with: "Your Biggest Fan"
      fill_in "Description", with: "You're the best!"
      fill_in "Email", with: "jmcgreggor@gmail.com"
      click_on "Create Contact"

      expect(page).to have_content "First name can't be blank"
    end

    it "gives an error when not passed the subject field" do
      visit '/contacts/new'

      fill_in "contact_first_name", with: "John"
      fill_in "contact_last_name", with: "McGreggor"
      fill_in "Description", with: "You're the best!"
      fill_in "Email", with: "jmcgreggor@gmail.com"
      click_on "Create Contact"

      expect(page).to have_content "Subject can't be blank"
    end

    it "gives an error when not passed the description field" do
      visit '/contacts/new'

      fill_in "contact_first_name", with: "John"
      fill_in "contact_last_name", with: "McGreggor"
      fill_in "Subject", with: "Your Biggest Fan"
      fill_in "Email", with: "jmcgreggor@gmail.com"
      click_on "Create Contact"

      expect(page).to have_content "Description can't be blank"
    end

    it "gives an error when not passed the email field" do
      visit '/contacts/new'

      fill_in "contact_first_name", with: "John"
      fill_in "contact_last_name", with: "McGreggor"
      fill_in "Subject", with: "Your Biggest Fan"
      fill_in "Description", with: "You're the best!"
      click_on "Create Contact"

      expect(page).to have_content "Email can't be blank"
    end
  end
