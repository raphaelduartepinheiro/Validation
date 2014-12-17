module Validation
  require "rules/is_integer"
  require "rules/is_boolean"

  class << self
    def validate(input)
      key = input.keys.first.to_s
      value = input.values.first
      load_module(key)
      is_valid?(value)
    end

    def load_module(name)
      module_name = "Is#{name.capitalize}"
      extend self::Rules::const_get(module_name)
    end
  end

  # def validate!(input, option)
  #   options = set_values(input, option)
  #   load_module(options[:val_module])
  #   result = valid?(options[:input], options[:rule])

  #   unless result
  #     raise TypeError, "The input #{input} does not match the rule #{options[:option]} with option #{options[:rule]}"
  #   end
  # end
end
