class CreateCrafts < ActiveRecord::Migration[6.0]
  def change
    create_table :crafts do |t|
      t.string :name
      t.text :description
      t.decimal :cost
      t.string :option
      t.string :quantity
      t.integer :user_id
      t.timestamps
    end
  end
end
