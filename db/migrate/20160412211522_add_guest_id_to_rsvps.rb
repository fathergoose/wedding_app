class AddGuestIdToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :guest_id, :integer
    add_column :rsvps, :attending, :boolean
  end
end
