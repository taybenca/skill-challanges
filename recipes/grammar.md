# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

method: verify_grammar() will verify if the first letter is a capital letter and the sentence finishes with a sentence-ending
parameter: a string
return: result = true or false

```ruby
# EXAMPLE
result = verify_grammar(string)
parameter: a string (e.g. "Hello, how are you?")
result: true or false (e.g. true)
# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE
verify_grammar("Hello, how are you?") => true
verify_grammar("Hello, how are you!") => true
verify_grammar("Hello, how are you.") => true
verify_grammar("hello, how are you") => false
verify_grammar("hello, how are you?") => false
verify_grammar("") => fail

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
