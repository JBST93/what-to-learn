class AddNameToReview < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :name, :string
    add_column :reviews, :job_title, :string
  end
end
