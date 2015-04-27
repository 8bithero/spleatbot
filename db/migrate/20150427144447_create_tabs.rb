class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|
      t.references :venue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
