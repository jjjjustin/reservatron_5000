class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.new_meeting.subject
  #
  def new_meeting(meeting)
    @meeting = meeting

    mail to: meeting.user.email, subject: "Thank you for creating a meeting"
  end
end



