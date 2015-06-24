class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :country
      t.string :city
      t.text :pre_slideshow_content
      t.text :post_slideshow_content
      t.string :banner

      t.timestamps
    end
  end
end
