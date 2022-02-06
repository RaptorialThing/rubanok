class CreateBankerProccesses < ActiveRecord::Migration[7.0]
  def change
    create_table :banker_proccesses do |t|
      t.belongs_to :user
      t.belongs_to :user_account
      t.integer :amount
      t.string :description
      t.timestamps
    end
  end
end
