require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://blogdoagi.com.br"
end

