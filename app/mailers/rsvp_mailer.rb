class RsvpMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rsvp_mailer.confirm.subject
  #
  def confirm(rsvp)
    @rsvp = rsvp

    mail(to: rsvp.email,
         subject: "You are confirmed")
  end
end
