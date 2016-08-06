class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.date :date
      t.time :time
      t.string :location
      t.integer :periodlength
      t.status :string
      t.string :official1
      t.string :official2
      t.string :official3
      t.integer :hometeam
      t.integer :awayteam
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
      t.integer :winner
      t.integer :loser
      t.integer :tie
      t.timestamps
    end
  end
end
