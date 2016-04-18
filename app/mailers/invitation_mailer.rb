class InvitationMailer < ApplicationMailer

  default subject: "We're getting married!"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invitation_mailer.invite.subject
  #
  def invite_single(guests)
    emails = []
    names = []

    guests.each do |guest|
      emails << guest.email
      guest_hash = {"name": guest.first_name}
      names << guest_hash
    end

    mail(to: emails)

    mail.mailgun_recipient_variables = Hash[emails.zip names]

  end

  def invite_with_plusone(guests)
    emails = []
    names = []

    guests.each do |guest|
      emails << guest.email
      guest_hash = {"name": guest.first_name}
      names << guest_hash
    end

    mail(to: emails)

    mail.mailgun_recipient_variables = Hash[emails.zip names]

  end


end
