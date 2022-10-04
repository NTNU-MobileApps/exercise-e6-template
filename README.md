# Exercise E6

Exercise E6 - Form with validation

## Intention

The intention is to practice creating forms with user input and do some basic form validation and
display of error messages.

## Hand-in process

Create a clone of the template repository within GitHub Classroom. Use the invitation link you got
from Blackboard! Get the automated tests passing.

**To pass the assignment approved you need to get at least TODO points.**

## Testing

As always, you can run `flutter test` inside the project folder to run all the tests. As an
alternative, use the testing features in your IDE - right-click on the necessary places, etc. You
know the drill ;)

P.S. Remember how you can run tests in a single test-file? `flutter test test/step_1_1_test.dart`
etc.

## Instructions

Your task is to implement a form where the user can input username, email and password, and press on
a "Submit" button. If an input contains an incorrect value, you must mark that input field and
display an appropriate error message.

Implement the input form according to the following specification (which will be checked in the
tests):

1. Add an input field for the username: a `TextField` widget (note: later we will talk
   about `TextFormField` widget as well, but don't use it for now as this may conflict with unit
   tests). Implement the following properties for this TextField:
    1. Set the `key` property for it to `username_input`. We have not used the `key` property
       before. In general - it is like an `id` used for web elements - an identifier that uniquely
       identifies an element in the UI (an instance of a widget).
    2. Set the label to `Username`.
    3. Set the hint inside the input field to `Chuck`.
2. Add an input field for the email: a `TextField` widget with the following properties:
    1. The `key` property having value `email_input`.
    2. Label `Email`
    3. Hint `microsoft@chuck.com`
    4. Make it an email-input field. I.e., when the user will enter the value here, she should see
       the keyboard layout made for entering email addresses.
3. Add an input field for the password with the following properties:
    1. `key` having value `password_input`
    2. Label `Password`
    3. Make it a password-input-field: the typed characters must not be visible!
4. Add a "Submit" button with the following features:
    1. `key` with value `submit_button`
    2. Text in it saying `Submit form`

When you are done with the UI, it should look something along these lines:

[//]: # (TODO - image)

Note: there will be no comparison with a golden image in this exercise, therefore specific fonts,
paddings and color's don't matter in this case.

Now implement the following logic for validation:

1. There should be no validation before the "Submit form" button is pressed. I.e., the user can
   enter any values and no error messages are shown first. Only after the "Submit form" button is
   pressed, the validation is enabled.
2. When the input field validation is enabled, the following rules apply:
    1. The username field is considered invalid if it does not satisfy the following mandatory
       requirements:
        1. It must contain only lowercase or uppercase letters from the English alphabet [a-z, A-Z],
           no other symbols are allowed (Norwegian letters øåæ are also not allowed).
        2. It must contain at least 3 characters
        3. It must not be longer than 12 characters
        4. Examples of valid usernames: `chuck`, `Chuck`, `cucumber`, `PewDiePie`, `cat`
        5. Examples of invalid usernames: `chuck12`, `nun-chuck`, `Pære`, `me`, empty string.
    2. If any of the error mentioned above are detected, the "Submit form" button is disabled
    3. The "Submit form" button is enabled again when all errors in the form are fixed and all input
       fields contain a valid value

To be continued...