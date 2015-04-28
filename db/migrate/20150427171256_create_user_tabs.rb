class CreateUserTabs < ActiveRecord::Migration
  def change
    create_table :user_tabs do |t|
      t.references :user, index: true, foreign_key: true
      t.references :tab, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
