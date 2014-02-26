Feature: Show the solved problem

  As an everyone
  So that I can see the solved problem
  I want to see the solved problem  

Background: Show the solveds
  
Given the following unsolveds exist:
| topic    | priority |  department | status |               details                |
| LAN      |    2     |  HR         |   0    | Lan cable is broken                 |
| Internet |    2     |  Engineer   |   1    | I can't use Internet                |
| Printer  |    5     |  Manager    |   0    | Printer says ink cartridge is empty |



And I am on the detail page for "LAN"

Scenario: Show the solved problem
When I follow "Add Solution to this problem"
And I fill in "Solution" with "Reconnect"
And I fill in "User" with "Chaipat Suebsantiworapong"
And I select "Finished Job" from "solution[worked]"
And I press "Save"
And I follow "Back"
And I go to solveds page
Then I should see "LAN"




