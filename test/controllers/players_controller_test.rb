# frozen_string_literal: true

require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test 'should get index' do
    get players_url, as: :json
    assert_response :success
  end

  test 'should create player' do
    assert_difference('Player.count') do
      post players_url,
           params: { player: { Team_id: @player.Team_id, age: @player.age, dominant_foot: @player.dominant_foot, first_name: @player.first_name, hieght: @player.hieght, last_name: @player.last_name, nationality: @player.nationality, number: @player.number, position: @player.position } }, as: :json
    end

    assert_response 201
  end

  test 'should show player' do
    get player_url(@player), as: :json
    assert_response :success
  end

  test 'should update player' do
    patch player_url(@player),
          params: { player: { Team_id: @player.Team_id, age: @player.age, dominant_foot: @player.dominant_foot, first_name: @player.first_name, hieght: @player.hieght, last_name: @player.last_name, nationality: @player.nationality, number: @player.number, position: @player.position } }, as: :json
    assert_response 200
  end

  test 'should destroy player' do
    assert_difference('Player.count', -1) do
      delete player_url(@player), as: :json
    end

    assert_response 204
  end
end
