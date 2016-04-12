class RsvpMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rsvp_mailer.invitation.subject
  #
  def invitation
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rsvp_mailer.confirmation.subject
  #
  def confirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
