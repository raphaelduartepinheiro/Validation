Validation
==========

An extensive pack of customizable and extensible validation.

Installation
==========

install & require:

gem install respect_validation

require 'resize-validation'

Usage
=====
```ruby
Resize::Validation::validation(email: 'londerson@gmail.com') #true
```
```ruby
Resize::Validation::validation(string: 5) #false
```
```ruby
Resize::Validation::validation!(integer: 'five') raises "The input five does not match the rule integer"
```
