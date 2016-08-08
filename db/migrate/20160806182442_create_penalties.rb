class CreatePenalties < ActiveRecord::Migration[5.0]
  def change
    create_table :penalties do |t|
      t.integer :game_id
      t.integer :period
      t.string :time
      t.integer :player_id
      t.integer :infraction
      t.integer :duration
      t.string :shorthanded

      t.timestamps
    end
    add_foreign_key :penalties, :games, column: :game_id
    add_foreign_key :penalties, :players, column: :player_id
    # add_index :penalties, :game_id
    # add_index :penalties, :player_id
  end
end
