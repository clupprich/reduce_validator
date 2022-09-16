require 'active_model/validator'

class ReduceValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, _value)
    return if record.errors[attribute].size <= 1

    first_message = record.errors[attribute][0]

    record.errors.delete(attribute)
    record.errors.add(attribute, message: first_message)
  end
end
