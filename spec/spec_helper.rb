RSpec.configure do |config|
  # for the optional capybara DSL:
  # feature is in fact just an alias for describe ..., :type => :feature, background is an alias for before, scenario for it, and given/given! aliases for let/let!, respectively
  # but it is also good to avoid specifying feature: true in describe blocks where you want to use capybara statements
  config.include Capybara::DSL
end
