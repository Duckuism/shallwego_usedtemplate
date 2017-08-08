class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :place_id
      t.string :timing
      t.string :event
      t.belongs_to :course

      t.timestamps
    end
  end
end
