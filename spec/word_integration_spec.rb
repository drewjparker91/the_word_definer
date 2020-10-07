require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the word page') do
    visit('/words')
    fill_in('word_title', :with => 'Hello')
    click_on('Save Word!')
    expect(page).to have_content('Hello')
  end
end