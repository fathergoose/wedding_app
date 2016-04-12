class AddNamesToRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :first_name, :string
    add_column :rsvps, :last_name, :string
  end
end
