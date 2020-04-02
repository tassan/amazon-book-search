require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
home_amazon = HomePage.new

Given(/^I am on Amazon search page$/) do
    driver.get home_amazon.url
  end
  
  When(/^I search for "([^"]*)"$/) do |string|
    element = driver.find_element(name: 'field-keywords')
    element.send_keys "codigo limpo"
    element.submit
  end
  
  Then(/^the page title should start with "([^"]*)"$/) do |string|
    wait = Selenium::WebDriver::Wait.new(timeout: 60)
    wait.until { driver.title.downcase.start_with? "codigo limpo"}
    puts "Page title is #{ driver.title }"
  end