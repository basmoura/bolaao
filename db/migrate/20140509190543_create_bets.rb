class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :score_team_a
      t.integer :score_team_b

      t.timestamps
    end
  end
end
