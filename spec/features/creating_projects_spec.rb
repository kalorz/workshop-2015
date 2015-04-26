require 'rails_helper'

RSpec.feature 'Creating Projects', type: :feature do

  it 'allows me to create a Project' do
    visit '/projects/new'

    fill_in 'Project Title', with: 'My awesome project! <3'
    fill_in 'Description', with: 'Some desc'
    fill_in 'Goal', with: 100
    select '2016', from: 'project_deadline_1i'

    click_button 'Create Project'

    expect(page).to have_content('My awesome project! <3')
  end

end
