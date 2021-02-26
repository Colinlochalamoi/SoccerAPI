# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :players, [PlayerType], null: false

    field :player, PlayerType, null: false, description: "Single Player" do 
      argument :id, ID, required: true  
    end

    def player(id)
      Player.find(id)
    rescue ActiveRecord::RecordNotFound => e 
      GraphQL::ExecutionError.new("Invalid input: #{e.message}")
    end


    def players 
      Player.all
    end

  end
end
