class AddWelcomeMessageToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :welcome_message, :text
  end
end
