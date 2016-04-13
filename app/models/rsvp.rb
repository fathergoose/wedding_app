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

  def mark_guest

    # Convert boolean to string
    is_attending = attending ? 'attending' : 'not attending'
    puts(is_attending)
    puts(attending)

    if @guest = Guest.find_by(email: email)
      # Mark guest as having rsvpd
       @guest.update rsvp: is_attending
    else
      # Or create new guest
      @guest = Guest.new email: email,
                         first_name: first_name, 
                         last_name: last_name,
                         rsvp: is_attending
      @guest.save
    end

  end

end
