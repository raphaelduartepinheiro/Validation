Validation
==========

An extensive pack of customizable and extensible validation.

Installation
==========

gem install respect_validation

Usage
=====

validation(email: 'londerson@gmail.com') #true
validation(string: 5) #false
validation!(integer: 'five') raises "The input five does not match the rule integer"
