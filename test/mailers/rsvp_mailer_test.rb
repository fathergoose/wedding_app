require 'test_helper'

class RsvpMailerTest < ActionMailer::TestCase
  test "invitation" do
    mail = RsvpMailer.invitation
    assert_equal "Invitation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmation" do
    mail = RsvpMailer.confirmation
    assert_equal "Confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
