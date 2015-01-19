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

* [is_boolean](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_boolean.rb "Title")
* [is_date](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_date.rb "Title")
* [is_email](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_email.rb "Title")
* [is_integer](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_integer.rb "Title")
* [is_json](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_json.rb "Title")
* [is_positive](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_positive.rb "Title")
* [is_negative](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_negative.rb "Title")
* [is_string](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_string.rb "Title")
* [is_multiple](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_multiple.rb "Title")
* [is_empty](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_empty.rb "Title")
* [is_downcase](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_downcase.rb "Title")
* [is_uppercase](https://github.com/Resize/Validation/blob/master/lib/resize/rules/is_uppercase.rb "Title")

###License

Copyright © 2014 Londerson Araújo, released under the MIT license
