class CreateTrainingHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :training_histories do |t|
      t.references :user, null: false, foreign_key: true
      t.string :body_part
      t.text :content
      t.float :weight
      t.integer :sets
      t.integer :reps

      t.timestamps
    end
  end
end
