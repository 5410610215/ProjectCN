Feature: Show the unsolveds problem

  As an everyone
  So that I can see the unsolved problem
  I want to see the unsolved problem

Background: Show the unsolveds

Given the following users exist:
| username | password |
| admin    | admin    |
  
Given the following unsolveds exist:
| topic    | priority |  department | status |               details                |
| LAN      |    2     |  HR         |   0    | Lan cable is broken                 |
| Internet |    2     |  Engineer   |   1    | I can't use Internet                |
| Printer  |    5     |  Manager    |   0    | Printer says ink cartridge is empty |

And I am on problempedia page

Scenario: Show the unsolved problem

And I fill in "username" with "admin"
And I fill in "password" with "admin"
And I press "Login"
When I go to unsolveds page
And I should see "LAN"



