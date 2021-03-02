# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :players, [PlayerType], null: false, description: 'All Players'
    field :teams, [TeamType], null: false, description: 'All Teams'

    field :player, PlayerType, null: false, description: 'Single Player' do
      # changed ID to int, returns a string {id => 1}
      argument :id, Integer, required: true
    end

    field :team, TeamType, null: false, description: 'Single Team' do
      argument :id, Integer, required: true
    end

    def player(id)
      Player.find(id[:id])
    rescue ActiveRecord::RecordNotFound => e
      GraphQL::ExecutionError.new("Invalid input: #{e.message}")
    end

    def team(id)
      Team.find(id[:id])
    rescue ActiveRecord::RecordNotFound => e
      GraphQL::ExecutionError.new("Invalid input: #{e.message}")
    end

    def players
      Player.all
    end

    def teams
      Team.all
    end
  end
end
