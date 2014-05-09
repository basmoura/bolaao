class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :nr
      t.string :team_a
      t.string :team_b
      t.integer :score_ta
      t.integer :score_tb

      t.timestamps
    end
  end
end
