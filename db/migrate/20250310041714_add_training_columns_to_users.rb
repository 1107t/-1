class AddTrainingColumnsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :abs, :string
    add_column :users, :arms, :string
    add_column :users, :back, :string
    add_column :users, :chest, :string
    add_column :users, :shoulder, :string
    add_column :users, :thighs, :string
  end
end
