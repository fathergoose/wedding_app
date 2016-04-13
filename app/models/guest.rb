class Guest < ActiveRecord::Base
  has_many :grouped_guests
  has_many :groups, through: :grouped_guests
  def full_name
    first_name + ' ' + last_name
  end

end
