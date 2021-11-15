class CreateAds < ActiveRecord::Migration[6.1]
  def change
    create_table :ads do |t|
      t.string :title
      t.text :text
      t.string :pc_url
      t.string :ios_url
      t.string :and_url
      t.string :cl_image

      t.timestamps
    end
  end
end
