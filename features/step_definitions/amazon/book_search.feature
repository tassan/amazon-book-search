Feature: Search Book Price on Amazon
    Look up on amazon for the price of a Book

    Scenario: Finding a Book
    Given I am on |site|amazon.com.br| search page
    When I search for "codigo limpo"
    Then the page title should start with "codigo limpo"