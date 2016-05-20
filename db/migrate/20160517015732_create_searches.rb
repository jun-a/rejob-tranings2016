class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :name
      t.string :description
      t.string :city
      t.string :title
      t.timestamps null: false
    end
  end
end
