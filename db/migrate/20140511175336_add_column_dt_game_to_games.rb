class AddColumnDtGameToGames < ActiveRecord::Migration
  def change
    add_column :games, :dt_game, :datetime
  end
end
