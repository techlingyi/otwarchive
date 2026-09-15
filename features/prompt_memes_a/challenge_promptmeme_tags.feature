@collections @challenges @promptmemes
Feature: Prompt Meme Challenge
  In order to have an archive full of works
  As a humble user
  I want to tag my prompts and have them be hidden or shown appropriately

  @javascript
  Scenario: Can hide and show additional tags on a prompt
    Given I have Battle 12 prompt meme fully set up
      And I sign up for Battle 12 with combination A
    When I am logged in as "myname2"
      And I set my preferences to hide freeform
      And I go to "Battle 12" collection's page
      And I follow "Prompts (2)"
    Then I should see "Show additional tags"
      And I should not see "Alternate Universe - Historical"
    When I follow "Show additional tags"
    Then I should not see "Show additional tags"
      And I should see "Alternate Universe - Historical"

  @javascript
  Scenario: Can hide and show warnings on a prompt
    Given I have Battle 12 prompt meme fully set up
    When I follow "Challenge Settings"
      And I enable archive warning challenge options
      And I start signing up for "Battle 12"
      And I check the 1st checkbox with the value "No Archive Warnings Apply"
      And I submit
    When I am logged in as "myname2"
      And I set my preferences to hide warnings
      And I go to "Battle 12" collection's page
      And I follow "Prompts"
    Then I should see "Show warnings"
      And I should not see "No Archive Warnings Apply"
    When I follow "Show warnings"
    Then I should not see "Show warnings"
      And I should see "No Archive Warnings Apply"