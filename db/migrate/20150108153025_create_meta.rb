class CreateMeta < ActiveRecord::Migration
  def change
    create_table :meta do |t|
      t.text :slogan
      t.string :site_banner
      t.text :about

      t.timestamps null: false
    end
  end
end
