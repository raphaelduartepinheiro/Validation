###Validation

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

Resize::Validation::validation(date: "20/01/2015") 
 # => true

Resize::Validation::validation(date: "01-12-2016") 
 # => true

Resize::Validation::validation(date: "riseze") 
 # => false
```