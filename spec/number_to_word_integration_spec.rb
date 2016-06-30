require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the number to word path', {:type => :feature}) do
  it('return inputted number in a word form') do
    visit('/')
    fill_in('num', :with => 27)
    click_button('Show me dat word')
    expect(page).to have_content('twenty seven')
  end
end
