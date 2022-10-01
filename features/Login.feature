Feature: Login and input data


    Scenario: User fill user_name and user_password correctly
        When User fill 2 input field with data correctly
        And  click on "Login" button
        Then Backend will load the datatable of user to the page
        And  The login fields will change to "Hello user_name"

    Scenario: User fill user_name and user_password not correctly
        When User fill 2 input field with not correct data
        And  click on "Login" button
        Then The input fields will be empty
        And there is a massage next to it "Wrong username or password"

    Scenario: Person use email andress and password to login
        When Person fill the user_name field with email adress
        And  Give the password of that users email to the password field
        Then  The login fields will change to "Hello User"

    Scenario: Person use email andress and password to login incorrectly
        When Person fill the user_name field with email adress
        And  Give the password of that users email to the password field
        But  Those data have no user
        Then The input fields will be empty
        And there is a massage next to it "Wrong username or password"