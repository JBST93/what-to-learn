class CreateCreditcard < ActiveRecord::Migration[7.1]
  def change
    create_table :creditcards do |t|
      t.bigint :card_number
      t.integer :expiry_month
      t.integer :expiry_year
      t.integer :cvv
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
