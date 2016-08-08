class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.integer :game_id
      t.integer :team_id
      t.integer :player_id
      t.integer :period
      t.string :time
      t.string :situation
      t.integer :goalie_id


      t.timestamps
    end
    add_foreign_key :goals, :games, column: :game_id
    add_foreign_key :goals, :teams, column: :team_id
    add_foreign_key :goals, :players, column: :player_id
    # add_index :goals, :game_id
    # add_index :goals, :team_id
    # add_index :goals, :player_id
  end
end
