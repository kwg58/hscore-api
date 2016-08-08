class CreateGoalies < ActiveRecord::Migration[5.0]
  def change
    create_table :goalies do |t|
      t.integer :time_played
      t.integer :goals_against

      t.timestamps
    end
  end
end
