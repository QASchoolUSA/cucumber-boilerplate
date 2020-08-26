Feature: QA Tutorials Test

Scenario: Search
    Given I open the url "/"
        And I pause for 1000ms
    Then I expect the url to contain "qatutorials"
    When I click on the button "#toggleSearch"
        And I enter "QA" to the textbox "#searchInput"
        And I press "Enter"
        And I pause for 3000ms
    Then I expect that element "#searchResultsHeader" is displayed

# Scenario: open URL
#     Given I open the url "/"
#     And   I pause for 1000ms
#     Then  I expect the url to contain "qatutorials"
#     And   I expect that the title is "QA Blog"
#     And   I pause for 2000ms

# Scenario: open URL
#     Given I open the url "/"
#     And   I pause for 1000ms
#     Then  I expect the url to contain "qatutorials"
#     And   I expect that the title is "QA Blog"
#     And   I pause for 2000ms

# Scenario: open URL
#     Given I open the url "/"
#     And   I pause for 1000ms
#     Then  I expect the url to contain "qatutorials"
#     And   I expect that the title is "QA Blog"
#     And   I pause for 2000ms

# Scenario: open URL
#     Given I open the url "/"
#     And   I pause for 1000ms
#     Then  I expect the url to contain "qatutorials"
#     And   I expect that the title is "QA Blog"
#     And   I pause for 2000ms