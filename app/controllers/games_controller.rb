class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    @games = Game.order(:dt_game)
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to games_path
      flash[:success] = "Jogo cadastrado com sucesso"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to games_path
      flash[:success] = "Jogo atualizado com sucesso"
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
    flash[:success] = "Jogo removido com sucesso"
  end

  private
  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:dt_game, :hr_game, :team_a, :team_b, :score_ta, :score_tb)
  end
end
