Feature: Delete the unsolved problem on Problempedia
  As an Admin
  So that I can delete the problem on Problempedia
  I want to delete the problem on Problempedia database

Background: problem have been added to database
  
Given the following unsolveds exist:
| topic    | priority | department | status |               details                |
| LAN      |    2     |  HR         |   0    | Lan cable is broken                 | 
| Internet |    2     | Engineer   |   1    | I can't use Internet                | 
| Printer  |    5     |  Manager    |   0    | Printer says ink cartridge is empty |
 


And I am on unsolveds page

Scenario: Delete a unsolveds problem
When I go to the show page for "LAN"
And I follow "Delete"
Then I should be on unsolveds page
And I should not see "LAN"


