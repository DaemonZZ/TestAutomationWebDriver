Feature: Login
    1. Log-in with valid username and password.
    2. Log-in with incorrect username and incorrect password.
    3. Log-in with correct username and empty password.
    4. Log-in with empty username and valid password.
    5. Log-in with empty username and empty password.
    6. Log-in -Password should be masked
    7. Login-Handles case sensitive
    8. Login-Authentication

    #2
    # Scenario Outline: Log-in with incorrect username and incorrect password.
    #     Given Goto MyAccount menu
    #     When Enter incorrect username "<usename>" in username textbox incorrect password "<pass>" in password textbox.
    #     And Click Login btn
    #     Then 'ie Invalid username' is display and prompt to enter login again

    #     Examples:
    #         | usename   | pass     |
    #         | aloaloalo | 123abc   |
    #         | hansama   | clannand |

    #4
    Scenario Outline: Log-in with empty username and valid password.
        Given Goto MyAccount menu
        When Empty username textbox and valid password "<pass>" in password textbox.
        And Click Login btn
        Then 'ie Invalid username' is display and prompt to enter login again

        Examples:
            | pass             |
            | Value1           |
            | asdgfiu3782jksdg |