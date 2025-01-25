class TrainingParts < ActiveRecord::Migration[7.1]
  def change
    drop_table :training_parts, if_exists: true
    
    create_table :training_parts do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

