class ChangeColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :courses, :user_id, :course_creator_id
  end
end
