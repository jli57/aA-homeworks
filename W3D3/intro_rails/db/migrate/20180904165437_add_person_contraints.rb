class AddPersonContraints < ActiveRecord::Migration[5.2]
  def change
    change_column :people, :name, :string, null: false
  end
end
