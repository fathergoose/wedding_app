class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.boolean :has_plus_one
      t.integer :guest_id

      t.timestamps null: false
    end
  end
end
