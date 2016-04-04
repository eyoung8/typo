Feature: Create Category for Article
  As an author
  In order to better organize my articles
  I want to create categories
  
    Background:
    Given the blog is set up
    And I am logged into the admin panel
    
    Scenario: Create a category
      Given I am on the categories page
      When I fill in "category_name" with "MyNewCategory"
      When I fill in "category_keywords" with "2"
      When I fill in "category_permalink" with ""
      When I fill in "category_description" with "CS445 software engineering"
      When I press "Save"
      Then I should see "Category was successfully saved."
      And I should see "MyNewCategory"