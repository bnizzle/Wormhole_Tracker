require "rails_helper"

RSpec.feature "Signing User in" do
    before do
        @user = User.create!(username: "Example", email: "example@exmaple.com", password: "Password" )
    end
    
    scenario "with valid credentials" do
    
    visit "/"
    click_link "Sign In"
    fill_in "Username", with: @user.username
    fill_in "Password", with: @user.password
    click_button "Sign in"
    
    expect(page).to have_content "Signed in successfully."
    end
end