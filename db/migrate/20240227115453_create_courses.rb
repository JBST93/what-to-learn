class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.decimal :price
      t.references :user, null: false, foreign_key: true
      t.boolean :active, default: true
      t.string :tag
      t.text :text_editor

      t.timestamps
    end
  end
end
