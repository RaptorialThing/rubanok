class CreatePrinters < ActiveRecord::Migration[7.0]
  def change
    create_table :printers do |t|
      t.text :description
      t.belongs_to :user
      t.timestamps
    end
  end
end
