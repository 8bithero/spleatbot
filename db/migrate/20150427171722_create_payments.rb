class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :user_tab, index: true, foreign_key: true
      t.decimal :value
      t.boolean :success
      t.date :payment_date

      t.timestamps null: false
    end
  end
end
