require "spec_helper"

feature "user rolls dice", %(
  As a user
  I want to see a Web Boggle display with a roll button
  So that I can find words.

  Acceptance Criteria:
  [ ] When I visit the root path, I can see 16 alpha dice.
  [ ] When I visit the root path, I can see a button to roll the dice.
  [ ] If I click the button, the dice scramble.
  [ ] The dice blank? flash? after three minutes.

) do


  scenario "user visits homepage and sees a grid of sixteen die and a 'roll' button" do
    visit '/bLoggle'

    expect(page).to have_css("img.faces")
    expect(page).to have_button("ROLL")
  end

  scenario "user clicks 'ROLL' button to scramble die faces" do

    visit '/bLoggle'
    click_button "ROLL"
    expect(page).to have_css("img.faces")
    expect(page).to have_button("ROLL")
  end
end
    #
    # scenario "user submits an empty form" do
    #   fill_in
    # 'recipe_name', with: nil
    #   click_button 'Submit'
    #
    #   expect(page).tohave_content "You can't"
    # end
    #
    # scenario "user navigates back to the home page after submitting an empty form" do
    #   fill_in 'recipe_name', with: nil
    #   click_button 'Submit'
    #   click_link 'Try again!'
    #
    #   expect(page).to have_content 'Instructions'
    # end
