module Validation
  require "rules/is_integer"
  require "rules/is_boolean"

  def self.params
    if block_given?
      yield
    end
  end

  def self.validate(input, option)
    options = set_values(input, option)
    load_module(options[:val_module])
    valid?(options[:input], options[:rule])
  end

  def validate!(input, option)
    options = set_values(input, option)
    load_module(options[:val_module])
    result = valid?(options[:input], options[:rule])

    unless result
      raise TypeError, "The input #{input} does not match the rule #{options[:option]} with option #{options[:rule]}" 
    end
  end

  def self.load_module(module_name)
    extend Validation::const_get module_name
  end

  def self.set_values(input, option)
    option.each do |k, v|
      @module = "Is#{k.to_s.capitalize}"
      @rule = v
      @option  = k.to_s
    end

    set_values = {val_module: @module, input: input, rule: @rule, option: @option }
    return set_values
  end
end
