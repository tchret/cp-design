class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :picture, null: false
      t.string :type, null: false

      t.timestamps null: false
    end
  end
end
