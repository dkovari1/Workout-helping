Feature: Deleting data


    Scenario: User delete excercises from list
        Given There is a row
        When User click on "Delete" button at the end of row
        Then Row will be removed from the table