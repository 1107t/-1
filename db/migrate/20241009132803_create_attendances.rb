class CreateAttendances < ActiveRecord::Migration[7.1]
  def change
    create_table :attendances do |t|
      t.string :note
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
