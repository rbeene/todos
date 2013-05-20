require 'spec_helper'

feature 'Guest visits homepage' do
  scenario 'learns about the application and its goals' do
    visit root_path
    expect(page).to have_css '[data-role="description"]'
    within 'header' do
      expect(page).to have_css '[data-role="title"]', text:'Todos'
    end
  end
end
