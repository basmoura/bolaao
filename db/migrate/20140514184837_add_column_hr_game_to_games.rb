class AddColumnHrGameToGames < ActiveRecord::Migration
  def change
    add_column :games, :hr_game, :time
  end
end
