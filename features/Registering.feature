Feature: Registering, remove registering


    Scenario: Person register with name and password
        When User click on "Registering" button and fill Username, Password and Password verify field
        And  click on "Register" button
        Then Username and password will be saved

    Scenario: Person want to register with name and password, but password and password verfy is different
        When User click on "Registering" button and fill Username, Password and Password verify field
        And  Password and Password verify field is different
        And  click on "Register" button
        Then Password and Password verify field will be empty and massage under Password field what say "Incorrect password verification"

    Scenario: Person want to  delete Profile
        When User click on "Registering" button and fill Username, Password and Password verify field
        And  click on "Delete" button
        Then User will be removed from database and the data will be deleted

    Scenario: Person want to  delete Profile, but with not good password
        When User click on "Registering" button and fill Username, Password and Password verify field
        And  Password and Password verify field is different
        And  click on "Delete" button
        Then Password and Password verify field will be empty and massage under Password field what say "Incorrect password verification"
