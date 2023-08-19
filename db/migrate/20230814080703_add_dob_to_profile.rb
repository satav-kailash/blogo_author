class AddDobToProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :dob, :date
    add_column :profiles, :gender, :string
  end
end
