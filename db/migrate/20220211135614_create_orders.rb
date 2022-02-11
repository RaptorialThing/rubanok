class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.text :description
      t.belongs_to :printer 
      t.belongs_to :user 
      t.bigint :status
      t.timestamps
    end
  end
end
