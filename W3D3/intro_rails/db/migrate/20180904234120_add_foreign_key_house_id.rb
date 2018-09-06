class AddForeignKeyHouseId < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :people, :houses, column: :house_id, primary_key: :id
  end
end
