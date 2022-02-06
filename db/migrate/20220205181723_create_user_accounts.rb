class CreateUserAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_accounts do |t|
      t.belongs_to :user
      t.string :currency
      t.integer :amount
      t.timestamps
    end
  end
end
