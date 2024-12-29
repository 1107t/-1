class CreateUserTrainingMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :user_training_menus do |t|
      t.references :user, null: false, foreign_key: true
      t.references :training_menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
