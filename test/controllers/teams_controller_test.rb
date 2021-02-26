# frozen_string_literal: true

require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team = teams(:one)
  end

  test 'should get index' do
    get teams_url, as: :json
    assert_response :success
  end

  test 'should create team' do
    assert_difference('Team.count') do
      post teams_url,
           params: { team: { city: @team.city, color_1: @team.color_1, color_2: @team.color_2, league: @team.league, name: @team.name, nationality: @team.nationality } }, as: :json
    end

    assert_response 201
  end

  test 'should show team' do
    get team_url(@team), as: :json
    assert_response :success
  end

  test 'should update team' do
    patch team_url(@team),
          params: { team: { city: @team.city, color_1: @team.color_1, color_2: @team.color_2, league: @team.league, name: @team.name, nationality: @team.nationality } }, as: :json
    assert_response 200
  end

  test 'should destroy team' do
    assert_difference('Team.count', -1) do
      delete team_url(@team), as: :json
    end

    assert_response 204
  end
end
