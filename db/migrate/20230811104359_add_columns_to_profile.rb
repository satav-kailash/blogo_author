class AddColumnsToProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :married, :boolean
    add_column :profiles, :city, :string
    add_column :profiles, :skills, :string, array: true
  end
end
