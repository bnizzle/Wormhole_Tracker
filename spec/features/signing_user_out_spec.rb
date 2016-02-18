require "rails_helper"

RSpec.feature "Signing logged in User out" do
    before do
        @user = User.create!(username: "Example", email: "user@example.com", password: "password")
        visit "/"
        click_link "Sign In"
        fill_in "Username", with: @user.username
        fill_in "Password", with: @user.password
        click_button "Sign in"
    end
    
    scenario "Sign out logged in user" do
       visit "/"
       click_link "Logout"
       
       expect(page).to have_content "Signed out successfully."
    end
end