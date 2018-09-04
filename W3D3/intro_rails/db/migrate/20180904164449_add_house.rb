class AddHouse < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |h|
      h.string :address
      h.timestamps
    end
  end
end
