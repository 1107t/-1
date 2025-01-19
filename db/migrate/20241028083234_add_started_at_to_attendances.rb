class AddStartedAtToAttendances < ActiveRecord::Migration[7.1]
  def change
    add_column :attendances, :started_at, :datetime
  end
end
