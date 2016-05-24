class CreateNewregists < ActiveRecord::Migration
  def change
    create_table :newregists do |t|
      t.string :name
      t.string :name_kana
      t.integer :age
      t.string :sex
      t.string :pass
      t.string :pass2
      t.timestamps null: false
    end
  end
end
