class AddBioToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :bio, :text
  end
end
