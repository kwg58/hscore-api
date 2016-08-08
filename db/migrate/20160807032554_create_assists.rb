class CreateAssists < ActiveRecord::Migration[5.0]
  def change
    create_table :assists do |t|
      t.integer :goal_id
      t.integer :player_id
      t.integer :assist_no

      t.timestamps
    end
    add_foreign_key :assists, :goals, column: :goal_id
    add_foreign_key :assists, :players, column: :player_id
    # add_index :assists, :goal_id
    # add_index :assists, :player_id
  end
end
