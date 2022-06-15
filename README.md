# Skill Challanges

This project will use a few components:

### Ruby

The programming language.

 ### Bundler

A tool for managing dependencies in a Ruby project. A dependency is a piece of software someone else has written to help others build programs. In Ruby these dependencies are known as 'Gems'.

### RSpec
A test framework for use with Ruby. A test framework is a tool for writing and running tests.

### Git
A version control system for use with any programming language. In the industry software projects are changed by many people in small steps, and version control systems help us keep track of those changes.

***

## Important Guide

````
mkdir your-project-directory
cd your-project-directory

rvm get stable
rvm use ruby --latest --install --default

gem install bundler

bundle init

bundle add rspec

rspec --init

mkdir lib

git init .
git add .
git commit -m "Project setup"

git remote add origin YOUR_REMOTE_ADDRESS
git branch -M main
git push -u origin main
````
