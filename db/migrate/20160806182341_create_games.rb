class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.date :date
      t.string :time
      t.string :location
      t.string :status
      t.integer :periodlength
      t.string :official1
      t.string :official2
      t.string :official3
      t.integer :hometeam_id
      t.integer :awayteam_id
      t.integer :homescore1
      t.integer :homescore2
      t.integer :homescore3
      t.integer :homescoreOT
      t.integer :homescorefinal
      t.integer :awayscore1
      t.integer :awayscore2
      t.integer :awayscore3
      t.integer :awayscoreOT
      t.integer :awayscorefinal
      t.integer :winner_id
      t.integer :loser_id
      t.integer :tie
      t.timestamps
    end
    add_foreign_key :games, :teams, column: :hometeam_id
    add_foreign_key :games, :teams, column: :awayteam_id
    add_foreign_key :games, :teams, column: :winner_id
    add_foreign_key :games, :teams, column: :loser_id
  end
end
