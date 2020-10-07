require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the words page') do
    visit('/words')
    fill_in('word_title', :with => 'Hello')
    click_on('Save Word!')
    expect(page).to have_content('Hello')
  end
end

# describe('create an edit word path', {:type => :feature}) do
#   it('creates a word, then edits the word, going back to the word page') do
#     word = Word.new({:title => 'Hello', :id => nil})
#     word.save
#     visit("/words/#{word.id}/edit")
#     fill_in('title', :with => 'World')
#     click_on('Save!')
#     expect(page).to have_content('World')
#   end    
# end
describe('create a definition path', {:type => :feature}) do
  it('creates a definition and appends it onto the word page') do
    word = Word.new({:title => 'Hello', :id => nil})
    word.save
    visit("/words/#{word.id}")
    fill_in('definition_body', :with => 'World')
    click_on('Save Definition!')
    expect(page).to have_content('World')
  end
end