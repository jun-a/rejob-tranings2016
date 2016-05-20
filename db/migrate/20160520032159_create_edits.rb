class CreateEdits < ActiveRecord::Migration
  def change
    create_table :edits do |t|

      t.timestamps null: false
    end
  end
end
