class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :firstname
      t.string :lastname
      t.string :fullname
      t.string :phone
      t.string :email
      t.integer :jerseynumber

      t.timestamps
    end
    add_foreign_key :players, :teams, column: :team_id
    # add_index :players, :team_id
  end
end
