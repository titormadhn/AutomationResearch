Feature: Add new features

Background:
    Given User already logged in to TM Digital

    Scenario Outline:
        Given User already open project detail
        When User click button Add New features
        And User Input Fitur "<featureName>"
        And User select "<QAAssigned>"
        And User Input "<featureDetail>"
        And User Click button Save
        And User click button Save on pop up confirmation
        And User click button OK on pop up information
        Then Feature successfully added

        Examples:
            | featureName    | QAAssigned                                                                             | featureDetail      |
            | Register       | //ul[@class='multiselect-container dropdown-menu show']/li[2]//label[@class='checkbox']| Detail 1           |
            | Login          | //ul[@class='multiselect-container dropdown-menu show']/li[4]//label[@class='checkbox']| Detail 2           |

