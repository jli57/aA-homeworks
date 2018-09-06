class AddPossessions < ActiveRecord::Migration[5.2]
  def change
    create_table :possessions do |t|
      t.string :name
      t.float :cost
      t.integer :owner_id
      t.timestamps
    end
  end
end
