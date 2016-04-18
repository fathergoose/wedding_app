class Invitation < ActiveRecord::Base
  belongs_to :guest

  def self.invite_all(guests)
    guests_with_plusone = guests.where(has_plus_one: true)
    guests_without_plusone = guests.where(has_plus_one: false)
   
    InvitationMailer.invite_single(guests_without_plusone).deliver_now
    InvitationMailer.invite_single(guests_with_plusone).deliver_now
  end


end
