# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :players, inverse_of: :team , dependent: :destroy
end
