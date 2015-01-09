###Validation

[![Code Climate](https://codeclimate.com/github/Resize/Validation/badges/gpa.svg)](https://codeclimate.com/github/Resize/Validation)

[![Test Coverage](https://codeclimate.com/github/Resize/Validation/badges/coverage.svg)](https://codeclimate.com/github/Resize/Validation)

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

###Rules

* [Resize::Validation::validate(boolean:)](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_boolean.rb "Title")
* [Resize::Validation::validate(date:)](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_date.rb "Title")
* [Resize::Validation::validate(email:)](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_email.rb "Title")
* [Resize::Validation::validate(integer:)](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_integer.rb "Title")
* [Resize::Validation::validate(json:)](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_json.rb "Title")
* [Resize::Validation::validate(positive:)](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_positive.rb "Title")
* [Resize::Validation::validate(string:)](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_string.rb "Title")

