class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :min_time
      t.integer :max_time

      t.timestamps null: false
    end
  end
end
