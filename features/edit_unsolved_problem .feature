Feature: Edit the unsolved problem on Problempedia
  
Background: problem have been added to database
  
Given the following unsolveds exist:
| topic    | priority | department | status |               details                |
| LAN      |    2     |  HR         |   0    | Lan cable is broken                 | 
| Internet |    2     | Engineer   |   1    | I can't use Internet                | 
| Printer  |    5     |  Manager    |   0    | Printer says ink cartridge is empty |
 



Scenario: Edit a unsolveds problem
When I go to the edit page for "LAN"
And I fill in "Department" with "Engineer2"
And I press "Save"
And I follow "Back"
Then I should be on unsolveds page
And I should see "Engineer2"

