Feature: Delete the solve that break the rules
  As an Admin
  So that I can delete the solve problem that break the rules
  I want to delete the solve problem that break the rules

Background: delete a solveds problem from database

Given the following users exist:
| username | password |
| admin    | admin    |
  
Given the following unsolveds exist:
| topic    | priority | department | status |               details                |
| Internet |    2     | Engineer   |   1    | I can't use Internet                | 
 

And I am on problempedia page

Scenario: Delete a solveds problem

And I fill in "username" with "admin"
And I fill in "password" with "admin"
And I press "Login"
When I go to solveds page
When I follow "Delete"
Then I should be on solveds page
And I should not see "Internet"

