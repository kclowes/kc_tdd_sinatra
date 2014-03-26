require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'manage items' do
  scenario 'user visits a webpage that displays welcome' do
    visit('/')
    expect(page).to have_content('Welcome')
    click_link('Add a Task')
    fill_in('tasks', :with => 'clean')
    click_on('Create task')
    expect(page).to have_content('clean')
  end
end