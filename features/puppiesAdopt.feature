Feature:
  Background:
    Given I am on PuppiesAdopt page

  Scenario: Validate the adopt puppy functionality
    When I click view details
    And I click Adopt Me
    And I click on Chew Toy and Travel Carrier
    And I click on Complete the Adoption
    And I enter the text fields

    Then Validate the Success Message