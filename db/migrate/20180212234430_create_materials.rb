class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string :title
      t.string :url
      t.string :type
      t.text :notes
      t.integer :user_id
      t.integer :lab_id
      
      t.timestamps
    end
  end
end
