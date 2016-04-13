class InvitationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invitation_mailer.invite.subject
  #
  def invite(guest)
    @guest = guest

    mail(to: guest.email,
         subject: "We're getting married!" )
  end
end
