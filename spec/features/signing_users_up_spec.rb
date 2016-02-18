require "rails_helper"

RSpec.feature "Users signup" do
    scenario "with valid credentials" do
        visit "/"
        
        click_link "Sign Up"
        fill_in "Username", with: "Example"
        fill_in "Email", with: "user@example.com"
        fill_in "Password", with: "Password"
        fill_in "Password confirmation", with: "Password"
        click_button "Sign Up"
        
        expect(page).to have_content("Welcome! You have signed up successfully.")
    end
end