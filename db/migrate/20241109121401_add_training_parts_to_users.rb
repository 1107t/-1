class AddTrainingPartsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :arms, :string
    add_column :users, :abs, :string
    add_column :users, :back, :string
    add_column :users, :chest, :string
    add_column :users, :shoulder, :string
    add_column :users, :thighs, :string
  end
end
