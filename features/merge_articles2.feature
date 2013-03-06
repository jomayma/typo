Feature: Merge Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to merge two articles into another one to my blog

  Background: Start from Admin page and two articles previously published
    Given the blog is set up
    And I am logged into the admin panel
    
    Given I have publish "Lorem Ipsum" with title "Foobar"
    
    Given I have publish "Dolor Sit Amet" with title "Poobar"

  Scenario: Successfully merge articles
    Given I follow "Foobar"
    When I have merge "Foobar" with "Poobar"
    And I go to the home page
    When I follow "Foobar"
    Then I should see "Lorem Ipsum Dolor Sit Amet"
