# frozen_string_literal: true

module Mutations
  class CreatePlayer < BaseMutation
    field :player, Types::PlayerType, null: true
    field :errors, String, null: true

    argument :player_input, Types::CreateUserInputType, required: true

    def resolve(player_input:)
      @player = Player.create(
        first_name: player_input.firstName,
        last_name: player_input.lastName,
        dominant_foot: player_input.dominantFoot,
        position: player_input.position,
        number: player_input.number,
        age: player_input.age,
        hieght: player_input.hieght,
        nationality: player_input.nationality,
        team_id: player_input.teamId
      )

      if @player.save
        {
          player: @player,
          errors: nil

        }
      else
        {
          player: nil,
          errors: @player.errors.messages
        }
      end
    end
  end
end
