class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :email
      t.string :room
      t.string :officeno
      t.string :cellno
      t.integer :arrivaltime
      t.integer :leavetime

      t.timestamps null: false
    end
  end
end
