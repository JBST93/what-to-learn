class AddDefaultValueToRole < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :role, 'student'
  end
end
