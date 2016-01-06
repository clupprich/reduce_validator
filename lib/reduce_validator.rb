require 'active_model/validator'

class ReduceValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, _value)
    return until record.errors.include?(attribute)

    record.errors[attribute].slice!(-1) until record.errors[attribute].size <= 1
  end
end
