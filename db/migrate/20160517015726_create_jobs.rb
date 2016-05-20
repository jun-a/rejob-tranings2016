class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.string :city
      t.string :title
      t.timestamps null: false
    end
  end
end
