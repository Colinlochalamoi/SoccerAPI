# frozen_string_literal: true

module Types
  class CreateUserInputType < Types::BaseInputObject
    description 'arguments for a player'
    argument :firstName, String, required: true
    argument :lastName, String, required: true
    argument :number, Integer, required: true
    argument :position, String, required: true
    argument :hieght, String, required: true
    argument :dominantFoot, String, required: true
    argument :age, Integer, required: true
    argument :nationality, String, required: true
    argument :teamId, Integer, required: false
  end
end
