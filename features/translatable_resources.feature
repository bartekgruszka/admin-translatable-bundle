Feature: Editing translatable resources
  In order to edit translatable resources in specific locale
  As an administrator
  I need to choose locale from translatable locale list

  Background:
    Given the following translatable resources were registered
      | Service Id                                  | Class                                                 | Tag           |
      | fixtures_bundle.admin.translatable_resource | FSi\FixturesBundle\Admin\TranslatableResource         | admin.element |
    And the following non-translatable resources were registered
      | Service Id                                      | Class                                             | Tag           |
      | fixtures_bundle.admin.non_translatable_resource | FSi\FixturesBundle\Admin\NonTranslatableResource  | admin.element |
    And the following translatable locales were defined
      | Locale    |
      | en        |
      | pl        |
      | de        |

  Scenario: Accessing translatable resource edit page
    Given I am on the "Admin panel" page
    When I follow "Translatable Resource" menu element
    Then I should see "Translatable Resource Edit" page header "Edit resources"

  Scenario: Edit translatable resource in default translatable locale
    Given I am on the "Translatable Resource Edit" page with default translatable locale "en"
    And I fill form "Header" field with "Header value en"
    And I fill form "Context" field with "Context value en"
    And I press "Save" button
    When I choose "pl" from translatable locale list
    And I fill form "Context" field with "Context value pl"
    And I press "Save" button
    Then I choose "en" from translatable locale list
    And I should see form "Context" field with value "Context value en"
