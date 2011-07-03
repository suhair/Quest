Feature: Signup Feature

    Scenario: Signup for a user
        Given I am on the home page
        When I follow "Sign up"
        And I fill in "Email" with "user@quest.com"
        And I fill in "Password" with "password"
        And I fill in "Password confirmation" with "password"
        And I press "Sign up"
        Then I should be on the homepage
        And I should see "Welcome! You have signed up successfully."
