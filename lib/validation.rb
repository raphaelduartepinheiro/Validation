module Validation
  require "validation/is_integer"

  def validate(input, option)
    options = set_values(input, option)
    load_module(options[:val_module])
    validation(options[:input], options[:rule])
  end

  def load_module(module_name)
    extend Validation::const_get module_name
  end

  def set_values(input, option)
    option.each do |k, v|
      @module = "Is#{k.to_s.capitalize}"
      @rule = v
    end

    set_values = {val_module: @module, input: input, rule: @rule}
    return set_values
  end
end
