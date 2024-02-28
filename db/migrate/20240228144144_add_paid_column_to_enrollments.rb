class AddPaidColumnToEnrollments < ActiveRecord::Migration[7.1]
  def change
    add_column :enrollments, :paid, :boolean
  end
end
