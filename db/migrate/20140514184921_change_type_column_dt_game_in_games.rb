class ChangeTypeColumnDtGameInGames < ActiveRecord::Migration
  def change
    change_column :games, :dt_game, :date
  end
end
