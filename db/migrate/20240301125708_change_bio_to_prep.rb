class ChangeBioToPrep < ActiveRecord::Migration[7.1]
  def change
    rename_column :courses, :bio, :prep
  end
end
