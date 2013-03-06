Given /I have publish "(.*)" with title "(.*)"/ do |content, title|
  steps %Q{
    Given I am on the new article page
    When I fill in "article_title" with "#{title}"
    And I fill in "article__body_and_extended_editor" with "#{content}"
    Then I press "Publish"
    Given I am on the admin content page 
    Then I should see "#{title}"
  }
end
When /I have merge "(.*)" with "(.*)"/ do |article1, article2|
  steps %Q{
  	When I fill in "merge_with" with "#{article2}"
  	And I press "Merge"
  }
end
