module API
  class GamesController < ApplicationController
    def index
      render json: Game.all.select(:id, :nr, :dt_game, :hr_game, :team_a, :team_b, :score_ta, :score_tb)
    end
  end
end
