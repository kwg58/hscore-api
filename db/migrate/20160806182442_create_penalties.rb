class CreatePenalties < ActiveRecord::Migration[5.0]
  def change
    create_table :penalties do |t|
      t.integer :period
      t.time :time
      t.integer :player
      t.integer :sitter
      t.integer :infraction
      t.integer :duration
      t.string :shorthanded
      t.game :references

      t.timestamps
    end
  end
end
