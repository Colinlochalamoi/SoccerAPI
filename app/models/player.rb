# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team, inverse_of: :players, dependent: :destroy
end
