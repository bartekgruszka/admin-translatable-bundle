Feature: Change translatable language
  In order to change translatable language
  As a administrator
  I need to choose translatable language from list

  Background:
    Given the following admin translatable elements were registered
      | Service Id                    | Class                           |
      | fixtures_bundle.admin.events  | FSi\FixturesBundle\Admin\Events |
    And the following languages were defined
      | Language  |
      | en        |
      | pl        |
      | de        |

    Scenario: Change translatable language
      Given I am on the "Events list" page
      When I click "de" link from translatable language dropdown
      Then I should see translatable dropdown with "Translation (de)"
