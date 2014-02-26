Feature: Add how to solve the problem to Problempedia
  As an employees
  So that I know how to solve the problem, I can share this with other employees
  I want to add how to solve the problem to Problempedia

Background: problem have been added to database
  
Given the following unsolveds exist:
| topic    | priority | department | status |               details                |
| LAN      |    2     |  HR         |   0    | Lan cable is broken                 | 
| Internet |    2     | Engineer   |   1    | I can't use Internet                | 
| Printer  |    5     |  Manager    |   0    | Printer says ink cartridge is empty |
 



And I am on the detail page for "LAN"

Scenario: Add a new solution 
When I follow "Add Solution to this problem"
And I fill in "Solution" with "Reconnect"
And I fill in "User" with "Chaipat Suebsantiworapong"
And I press "Save"
And I follow "Back"
Then I should be on the detail page for "LAN"
And I should see "Reconnect"


