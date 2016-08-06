class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.string :fullname
      t.string :phone
      t.string :email
      t.integer :number
      t.team :references

      t.timestamps
    end
  end
end
