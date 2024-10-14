class AddWorkedOnToAttendances < ActiveRecord::Migration[7.1]
  def change
    add_column :attendances, :worked_on, :date
  end
end
