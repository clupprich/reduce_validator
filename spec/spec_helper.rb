$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rspec'
require 'reduce_validator'
require 'active_model'

class TestModel
  include ActiveModel::Validations

  def initialize(attributes = {})
    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end
end
