# frozen_string_literal: true

class User
  attr_reader :name, :age

  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def greeting
    "Hi I'm #{name}. #{age} years old"
  end
end
