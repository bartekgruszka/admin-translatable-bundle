Feature: Translatable locale list appearance for resources
  In order to show translatable locale list
  As a developer
  I need to install FSiAdminTranslatableBundle and define locales

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

  Scenario: Translatable locale list appearance for translatable resources
    Given I am on the "Translatable Resource Edit" page with default translatable locale "en"
    Then I should see translatable locale list
    And translatable locale list should have following locales
      | Locale    |
      | en        |
      | pl        |
      | de        |

  Scenario: Translatable locale list is inactive for non-translatable resources
    Given I am on the "Non Translatable Resource Edit" page
    Then I should see translatable locale list
    And translatable locale list should be inactive
