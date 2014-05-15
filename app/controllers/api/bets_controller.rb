module API
  class BetsController < ActionController::Base
    def index
      render json: Bet.all
    end

    def create
      bet = Bet.new(bet_params)
      render json: bet, location: bet_path(bet) if bet.save
    end

    private
    def bet_params
      params.require(:bet).permit(:user_id, :game_id, :score_team_a, :score_team_b)
    end
  end
end
