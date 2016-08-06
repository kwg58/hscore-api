class CreateInfractions < ActiveRecord::Migration[5.0]
  def change
    create_table :infractions do |t|
      t.string :infraction

      t.timestamps
    end
  end
end
