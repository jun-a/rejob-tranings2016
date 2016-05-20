class CreateNewedits < ActiveRecord::Migration
  def change
    create_table :newedits do |t|

      t.timestamps null: false
    end
  end
end
