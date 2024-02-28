class RenameRegistrationsToEnrollments < ActiveRecord::Migration[7.1]
  def change
    rename_table :registrations, :enrollments
  end
end
