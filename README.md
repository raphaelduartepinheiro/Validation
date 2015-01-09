###Validation

[![Code Climate](https://codeclimate.com/github/Resize/Validation/badges/gpa.svg)](https://codeclimate.com/github/Resize/Validation)

An extensive pack of customizable and extensible validation.

###Installation

```shell
gem install resize_validation
```

```shell
require 'resize-validation'
```

###Usage

```ruby
Resize::Validation::validation(email: 'londerson@gmail.com')
 # => true
Resize::Validation::validation(string: 5)
 # => false
Resize::Validation::validation!(integer: 'five')
 # => raises "The input five does not match the rule integer"
```
