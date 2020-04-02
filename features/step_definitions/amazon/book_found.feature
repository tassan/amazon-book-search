Feature: Book was found on Amazon
    I found out the book price on Amazon

    Scenario: Book was found
    Given I am on Amazon results page
    When I found the book with "codigo limpo"
    Then the page must show the price