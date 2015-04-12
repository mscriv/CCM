class ContactForm < ActionMailer::Base
  default from: 'mscriven2@gmail.com'
  default to: 'bigscriv03@gmail.com'


  def email_form(message)
    @message = message
    mail subject: "#{message.subject} #{message.name}"
    mail body: "#{message.content}"
  end
  end