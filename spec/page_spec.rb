require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'manage items' do
  scenario 'user visits a webpage that displays welcome' do
    visit('/')
    expect(page).to have_content('Welcome')
  end
end