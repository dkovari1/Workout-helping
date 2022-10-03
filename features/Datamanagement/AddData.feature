Feature: Adding data


    Scenario: User add excercises to list
        Given User fills Date, Type and Length fields
        When User click on "Add to list" button
        Then Datas will be added on the bottom of the table


    Scenario: User try to add excercises to list, but not all field is filled
        Given User fills Date and/or Type and/or Length fields
        But Not all fields contains element
        When User click on "Add to list" button
        Then Datas wont be added on the bottom of the table
        And Under the input fields ther will be a massage "Please fill all fields"