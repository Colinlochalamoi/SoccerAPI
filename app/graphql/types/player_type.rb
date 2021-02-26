module Types
  class PlayerType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :number, Integer, null: true
    field :position, String, null: true
    field :hieght, String, null: true
    field :dominant_foot, String, null: true
    field :age, Integer, null: true
    field :nationality, String, null: true
    field :team_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
  
end
