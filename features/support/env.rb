require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://www.amazon.com.br'
end