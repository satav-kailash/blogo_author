class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :bank_name
      t.references :author, null: false, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
