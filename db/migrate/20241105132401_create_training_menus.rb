class CreateTrainingMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :training_menus do |t|
      t.string :name

      t.timestamps
    end
  end
end
