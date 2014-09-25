Feature: Performance test scenario

@performance_test
Scenario: Private Register with Title Extents
  Given I want to run a performance
  And I have the following scenarios
    | SCENARIO                                                               | USERS |
    | A user can find a property and view its details                        | 2     |
    | Citizen authorises the conveyancer client relationship                 | 2     |
    | Citizen Invalid password login failed                                  | 2     |
    | Create relationship token for buyers                                   | 2     |
    | Full register of title                                                 | 2     |
    | Processing Absolute Freehold First Registration with 1 proprietor (3)  | 2     |
    | View Change of Name in work queue                                      | 2     |
    | view register as new authenticated user                                | 2     |
  And I run for 1 minute
  And I ramp up 1 user every 1 seconds
  When I run the performance test
  Then I expect less than 10 failures
  And the scenarios response times were below:
    | SCENARIO                                                               | SECONDS |
    | A user can find a property and view its details                        | 10      |
    | Citizen authorises the conveyancer client relationship                 | 10      |
    | Citizen Invalid password login failed                                  | 10      |
    | Create relationship token for buyers                                   | 10      |
    | Full register of title                                                 | 10      |
    | Processing Absolute Freehold First Registration with 1 proprietor (3)  | 10      |
    | View Change of Name in work queue                                      | 10      |
    | view register as new authenticated user                                | 10      |
