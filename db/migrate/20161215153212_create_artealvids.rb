class CreateArtealvids < ActiveRecord::Migration[5.0]
  def change
    create_table :artealvids do |t|
      t.string :name
      t.text :lastname
      t.string :role
      t.text :position
      t.date :fecha

      t.timestamps
    end
  end
end
