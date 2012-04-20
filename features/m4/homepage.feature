Feature: Home Page
  In order to satisfy my interest in MongoDB
  As a anonymous user
  I want to see what is in the home page

  @javascriptX
  Scenario: I go to the home page
    Given nothing
    When I visit "/" 
    Then I should see "mongo4.us"
