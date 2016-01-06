require 'spec_helper'

class TestUser < TestModel
  validates :name, presence: true, length: { minimum: 4 }, reduce: true
end

describe ReduceValidator do
  it 'is valid when name is present' do
    expect(TestUser.new(name: 'John')).to be_valid
  end

  it 'only has a single error' do
    user = TestUser.new(name: '').tap(&:valid?)
    expect(user.errors[:name].length).to eq 1
  end
end
