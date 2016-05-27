class CreateUserEdits < ActiveRecord::Migration
  def change
    create_table :user_edits do |t|

      t.timestamps null: false
    end
  end
end
