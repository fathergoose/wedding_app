class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :guest
      t.string :plusone
      t.string :email
      t.text :comment

      t.timestamps null: false
    end
  end
end
