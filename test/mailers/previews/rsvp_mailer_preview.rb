# Preview all emails at http://localhost:3000/rails/mailers/rsvp_mailer
class RsvpMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/rsvp_mailer/invitation
  def invitation
    RsvpMailer.invitation
  end

  # Preview this email at http://localhost:3000/rails/mailers/rsvp_mailer/confirmation
  def confirmation
    RsvpMailer.confirmation
  end

end
