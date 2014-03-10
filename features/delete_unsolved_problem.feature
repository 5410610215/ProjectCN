Feature: Delete the unsolved problem on Problempedia
  As an Admin
  So that I can delete the problem on Problempedia
  I want to delete the problem on Problempedia database

Background: delete a unsolveds problem from database

Given the following users exist:
| username | password |
| admin    | admin    |
  
Given the following unsolveds exist:
| topic    | priority | department | status |               details                |
| LAN      |    2     |  HR         |   0    | Lan cable is broken                 | 
| Internet |    2     | Engineer   |   1    | I can't use Internet                | 
| Printer  |    5     |  Manager    |   0    | Printer says ink cartridge is empty |
 


And I am on problempedia page

Scenario: Delete a unsolveds problem

And I fill in "username" with "admin"
And I fill in "password" with "admin"
And I press "Login"
When I go to unsolveds page
When I go to the show page for "LAN"
And I follow "Delete"
Then I should be on unsolveds page
And I should not see "LAN"

