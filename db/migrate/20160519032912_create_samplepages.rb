class CreateSamplepages < ActiveRecord::Migration
  def change
    create_table :samplepages do |t|

      t.timestamps null: false
    end
  end
end
