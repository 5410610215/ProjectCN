Feature: Edit the unsolved problem on Problempedia
  
Background: change a unsolveds problem from database

Given the following users exist:
| username | password |
| admin    | admin    |
  
Given the following unsolveds exist:
| topic    | priority | department | status |               details                |
| LAN      |    2     |  HR         |   0    | Lan cable is broken                 | 
| Internet |    2     | Engineer   |   1    | I can't use Internet                | 
| Printer  |    5     |  Manager    |   0    | Printer says ink cartridge is empty |
 

And I am on problempedia page

Scenario: Edit a unsolveds problem

And I fill in "username" with "admin"
And I fill in "password" with "admin"
And I press "Login"
When I go to the edit page for "LAN"
And I fill in "Department" with "Engineer2"
And I press "Save"
And I follow "Back"
Then I should be on unsolveds page
And I should see "Engineer2"

