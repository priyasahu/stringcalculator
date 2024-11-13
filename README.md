# README

1. Creating the StringCalculator Class
We will create a class in the app/services directory, as this logic is not part of the standard Rails MVC structure but more like a service object.

Explanation:
Empty String: If the string is empty, the method returns 0.
Custom Delimiters: If the string starts with //, it treats the following characters as a custom delimiter. The remaining string after \n is the numbers list.
Negative Numbers: If any negative number is found, it raises an exception with the message listing all negative numbers.
Sum: The string of numbers is split based on either the custom delimiter or commas/newlines and then summed after converting each to an integer.

2. Writing RSpec Tests
Now, let's write the RSpec tests for the StringCalculator class. The tests will follow the order you mentioned, starting from simple cases and moving to more complex ones.

Explanation:
Empty String Test: Tests that an empty string returns 0.
Single Number Test: Tests that a string with a single number returns that number.
Two Numbers Test: Tests that a string with two numbers separated by a comma returns their sum.
New Line Test: Tests that new lines between numbers are handled correctly.
Custom Delimiters Test: Tests the custom delimiter functionality (e.g., //;\n1;2).
Negative Number Test: Tests that if there are negative numbers, an error is raised, and the error message includes the negative numbers.
Multiple Negative Numbers: Tests that if there are multiple negative numbers, all of them are included in the error message.
