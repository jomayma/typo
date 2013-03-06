Feature: Merge Articles - User can't merge an article with another one that does not exist on the blog
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to merge two articles into another one to my blog


  Background: Start from Admin page editing an article previously published
    Given the blog is set up
    And I am logged into the admin panel

    Given I have publish "Lorem Ipsum" with title "Foobar"
    
  Scenario: Try to merge with nonexistent article (sad path)
    Given I follow "Foobar" 
    When I fill in "merge_with" with "Article That Does Not Exist"
    And I press "Merge"
    Then I should see "'Article That Does Not Exist' was not found in this_blog."
