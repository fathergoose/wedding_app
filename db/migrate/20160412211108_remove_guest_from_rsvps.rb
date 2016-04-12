class RemoveGuestFromRsvps < ActiveRecord::Migration
  def change
    remove_column :rsvps, :guest, :string
    remove_column :rsvps, :plusone, :string
  end
end
