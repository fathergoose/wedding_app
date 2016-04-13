class CreateGroupedGuests < ActiveRecord::Migration
  def change
    create_table :grouped_guests do |t|
      t.integer :guest_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
