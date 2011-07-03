Feature: Sign In For Users
    Scenario: Sign in for a User
        Given there are the following users:
            |email              |password       |
            |user@quest.com     |password       |
        And I am on the homepage
        When I follow "Sign in"
        And I fill in "Email" with "user@quest.com"
        And I fill in "Password" with "password"
        And I press "Sign in"
        Then I should be on the homepage
        And I should see "Signed in successfully."

