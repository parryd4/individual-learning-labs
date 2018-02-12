class CreateLabs < ActiveRecord::Migration[5.1]
  def change
    create_table :labs do |t|
      t.string :title
      t.text :description
      t.boolean :public, default: false
      t.integer :user_id
      t.timestamps
    end
  end
end
