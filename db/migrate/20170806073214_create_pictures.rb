class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :image
      t.belongs_to :course

      t.timestamps
    end
  end
end
