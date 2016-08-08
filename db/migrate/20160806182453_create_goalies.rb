class CreateGoalies < ActiveRecord::Migration[5.0]
  def change
    create_table :goalies do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :time_played
      t.integer :goals_against
      t.integer :win
      t.integer :loss

      t.timestamps
    end
    add_foreign_key :goalies, :games, column: :game_id
    add_foreign_key :goalies, :players, column: :player_id
    # add_index :goalies, :game_id
    # add_index :goalies, :player_id
  end
end
