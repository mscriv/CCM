class ContactForm < ActionMailer::Base
  default from: "mscriven2@gmail.com"
  default to: 'bigscriv03@gmail.com'


  def email_form(message)
    @message = message
    mail subject: "Inquiry"
    mail body: "Contains:
                email:   #{message.email}
                subject: #{message.subject}
                from:    #{message.name}
                message: #{message.content}"
  end
  end