Feature: Login Functionality for Opencart E-commerce website

  As a user of the opencart website
  I want to able to login with my account
  So that I can access my account related features manages orders

Background:
  Given Im on the Opencart login page

Scenario: Successfull login with valid credentials
  Given I have entered a valid username and password
  When I click on the login button
  Then I should be logged in successfully

Scenario Outline: Unsuccessfull login with invalid or empty credentials
  Given I have entered invalid "<username>" and "<password>"
  When I click on the login button
  Then I should see an error message indicating "<error_message>"

  Examples:
    | username          | password        | error_message                                        |  |
    | invalid@email.com | invalidPassword | Warning: No match for E-Mail Address and/or Password |  |
    | abbcc             | validPassword   | Warning: No match for E-Mail Address and/or Password |  |
    | valid@email.com   | abccc           | Warning: No match for E-Mail Address and/or Password |  |


 Scenario: Navigating to the forgotten password page
   When I click on the "Forgotten Password" link
   Then I should be redirected to the password reset page