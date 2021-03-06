Feature: Search the problem to Problempedia

  As an employees
  So that I can search the problem on Problempedia
  I want to search the problem on Problempedia database

  
Background: search solution problem from database

Given the following users exist:
| username | password |
| admin    | admin    |
  
Given the following unsolveds exist:
| topic    | priority | department | status |               details                |
| LAN      |    2     |  HR         |   0    | Lan cable is broken                 | 
| Internet |    2     | Engineer   |   1    | I can't use Internet                | 
| Printer  |    5     |  Manager    |   0    | Printer says ink cartridge is empty |
 

And I am on problempedia page

Scenario: show the solution problem from search

And I fill in "username" with "admin"
And I fill in "password" with "admin"
And I press "Login"
When I go to solveds page
And I fill in "search_value" with "tern"
And I should see "Internet"

