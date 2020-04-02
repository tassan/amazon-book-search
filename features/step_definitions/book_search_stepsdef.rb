require 'rubygems'
require 'selenium-webdriver'

home_amazon = HomePage.new

Given(/^I am on Amazon search page$/) do
    home_amazon.load
  end
  
  When(/^I search for "([^"]*)"$/) do |string|
    home_amazon.search_field.set 'codigo limpo'
    home_amazon.search_button.click
  end
  
  Then(/^the page title should start with "([^"]*)"$/) do |string|
    home_amazon.wait_until_search_field_visible(wait: 60)  
  end