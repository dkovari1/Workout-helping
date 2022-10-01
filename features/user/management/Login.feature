Feature: Login

    Scenario: User logs in with their cradentials
        Given User fills out the username and password correctly
        When  the user clicks on "Login" button
        Then  a header appears with the text: "Hello username"
        And   The data table contains the users exercises

    Scenario: User logs in with incorrect cradentials
        Given User fills out the username or password incorrectly
        When the user clicks on "Login" button
        Then The input fields will be empty
        And there is a massage below to the input fields "Wrong username or password"

    Scenario: User missed to fill out any of the fields
        Given User does not fill out every field
        When the user clicks on "Login" button
        Then The input fields which are empty have an error below "required field"