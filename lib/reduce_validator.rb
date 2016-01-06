require 'active_model/validator.rb'

class ReduceValidator < ActiveModel::EachValidator
  VERSION = '0.1.0'

  def validate_each(record, attribute, _value)
    return until record.errors.include?(attribute)

    record.errors[attribute].slice!(-1) until record.errors[attribute].size <= 1
  end
end
