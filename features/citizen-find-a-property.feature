@wip
Feature: Citizen find a property

Scenario: No Title Number match for citizen
Given I am searching for that property
And I am a citizen
When I enter an incorrect Title Number (non-matching)
And I search
Then no results are found

Scenario: Exact Title Number match for citizen
Given I am searching for that property
And I am a citizen
And I have a title number with a register
When I enter the exact Title Number
And I search
Then the citizen register is displayed

Scenario: Multiple Title Number match for citizen
Given I am searching for that property
And I am a citizen
And at least two registers with the same Title Number beginning exists
When I enter a Title Number with the same prefix
And I search
Then multiple results are displayed
And results show address details
And results show Title Number

Scenario: View register from multiple results for citizen
Given I have multiple search results
And I am a citizen
When I select a result
Then the citizen register is displayed
