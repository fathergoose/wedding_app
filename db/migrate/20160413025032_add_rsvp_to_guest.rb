class AddRsvpToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :rsvp, :string, default: 'no response'
  end
end
