Feature: Delete the solve that break the rules
  As an Admin
  So that I can delete the solve problem that break the rules
  I want to delete the solve problem that break the rules

Background: problem have been added to database
  
Given the following unsolveds exist:
| topic    | priority | department | status |               details                |
| Internet |    2     | Engineer   |   1    | I can't use Internet                | 
 

And I am on solveds page

Scenario: Delete a solveds problem
When I follow "Delete"
Then I should be on solveds page
And I should not see "Internet"


