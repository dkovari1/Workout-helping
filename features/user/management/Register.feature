Feature: Register

    Scenario: Person registers with name and password
        Given A person who filled out username, password and password verify fields on the register page
        And there is no user with this username
        When the person clicks on the "Register" button
        Then Username and password will be saved

    Scenario: Password mismatch
        Given A person who filled out username, password and password verify fields on the register page
        And the password and the password verify fields content is different
        When the person clicks on the "Register" button
        Then Password and Password verify field will be empty
        And below the Password field a message appears: "Incorrect password verification"

    Scenario: Password is not long enough
        Given A person who filled out username, password and password verify fields on the register page
        And the passwords length is less than 8
        When the person clicks on the "Register" button
        Then Password and Password verify field will be empty
        And below the Password field a message appears: "Password is not long enough"

    Scenario: Username is not long enough
        Given A person who filled out username, password and password verify fields on the register page
        And the username length is less than 2
        When the person clicks on the "Register" button
        Then below the username field a message appears: "Name is not long enough"

    Scenario: User already exists
        Given A person who filled out username, password and password verify fields on the register page
        And a user with the same name already exists
        When the person clicks on the "Register" button
        Then below the username field a message appears: "Name is already taken"
