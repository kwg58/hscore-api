class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.integer :team
      t.integer :player
      t.integer :assist1
      t.integer :assist2
      t.integer :period
      t.time :time
      t.string :situation
      t.integer :goalie
      t.game :references


      t.timestamps
    end
  end
end
