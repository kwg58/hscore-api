class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :fullname
      t.string :shortname
      t.string :contact
      t.string :contactemail
      t.string :contactphone

      t.timestamps
    end
  end
end
