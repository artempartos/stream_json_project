class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :owner
      t.string :full_name

      t.timestamps
    end
  end
end
