class AddHasPlusoneToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :has_plus_one, :boolean, default: false
  end
end
