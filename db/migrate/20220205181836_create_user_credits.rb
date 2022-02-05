class CreateUserCredits < ActiveRecord::Migration[7.0]
  def change
    create_table :user_credits do |t|
      t.belongs_to :user_account
      t.timestamps
    end
  end
end
