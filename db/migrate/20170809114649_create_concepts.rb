class CreateConcepts < ActiveRecord::Migration[5.0]
  def change
    create_table :concepts do |t|
      t.string :sex
      t.string :start_date
      t.string :end_date
      t.string :start_time
      t.string :end_time
      t.string :accommodation_type
      t.integer :people
      t.integer :fee
      t.string :author
      t.text :description
      t.string :hangout_type
      t.string :location
      t.belongs_to :user
      t.string :image
      t.timestamps
    end
  end
end
