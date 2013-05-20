require 'spec_helper'

feature 'User creates todo' do
  scenario 'with a title' do
    sign_in_as 'person@example.com'

    create_todo("Test our app")
    expect(page).should have_css 'li', text: 'Test our app'
  end
end
