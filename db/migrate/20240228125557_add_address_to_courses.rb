class AddAddressToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :address, :string
  end
end
