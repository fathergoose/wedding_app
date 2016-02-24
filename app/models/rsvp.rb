class Rsvp < ActiveRecord::Base
  def self.search(search)
    if search
      Rsvp.where('guest LIKE :search OR plusone LIKE :search  OR email LIKE :search OR comment LIKE :search', search: "%#{search}%")
    else
      Rsvp.all
    end
  end
end
