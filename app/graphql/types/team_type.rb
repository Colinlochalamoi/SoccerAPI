# frozen_string_literal: true

module Types
  class TeamType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :city, String, null: false
    field :nationality, String, null: false
    field :color_1, String, null: false
    field :color_2, String, null: false
    field :league, String, null: false
    field :players, [PlayerType], null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
