class DeleteTwoColumnsFromReviews < ActiveRecord::Migration[7.1]
  def change
    remove_column :reviews, :name, :string
    remove_column :reviews, :job_title, :string
  end
end
