class CreateNewregists < ActiveRecord::Migration
  def change
    create_table :newregists do |t|

      t.timestamps null: false
    end
  end
end
