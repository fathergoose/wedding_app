class Rsvp < ActiveRecord::Base
  belongs_to :guest
  def self.search(search)
    if search
      Rsvp.where('guest LIKE :search OR plusone LIKE :search  OR email LIKE :search OR comment LIKE :search', search: "%#{search}%")
    else
      Rsvp.all
    end
  end

  def comment_preveiw
    comment[0..50].gsub(/\s\w+\s*$/,'...')
  end
end
