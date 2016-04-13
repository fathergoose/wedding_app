class Invitation < ActiveRecord::Base
  belongs_to :guest

  def self.invite_all(guests)
    InvitationMailer.invite(guests).deliver_now
  end


end
