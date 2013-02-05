require 'capybara/rspec'
require 'spec_helper.rb'
require 'capybara-webkit'
# to use the chrome browser with :driver => :selenium you need chromedriver
# http://code.google.com/p/chromedriver/downloads/list
#Capybara.register_driver :selenium do |app|
  #Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end
# the default is :rack_test
Capybara.default_driver = :selenium
#Capybara.default_driver = :webkit
# We still need to specify this if you specify :js => true below, the default
# javascript_driver is :selenium.
Capybara.javascript_driver = :webkit

Capybara.app_host = "http://www.youtube.com"
Capybara.run_server = false
# The argument :type => :features passed to describe like this:
#describe "my first test", :type => :feature do
# is usually required to enable capybara's `visit`, `fill_in`, ...
# But we included the capybara dsl in spec_helper.rb, so we're magically good.

# you can force driver: xxx or js: true even here
describe "my first test" do

  # done with :selenium driver
  it "must have Popular as content" do
    visit ""
    #fill_in('search_query', :with => "text adventures")
    #click_button('search-btn')
    #page.should have_content("GET LAMP: The Text Adventure Documentary")
    page.should have_content("Popular")
  end
  # done with :webkit
  it "must have music as content", js: true do
    visit ""
    page.should have_content("Music")
  end
end
