# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

method: counting_time = it will receive an integer as a parameter (quantity of words)
return: total_time = division of total words and words per minute. 1 min = 200 words

```ruby
# EXAMPLE

# `counting_time` divides the total words of words per minute
total_time = counting_time(quantity_of_words)

quantity_of_words: a integer (e.g. 400)
total_time: a integer in minutes (e.g. 2)


# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

counting_time(1) => 1
counting_time(200) => 1
counting_time(300) => 2
counting_time(400) => 2
counting_time(5000) => 25

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
