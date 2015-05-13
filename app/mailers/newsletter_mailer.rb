class NewsletterMailer < ActionMailer::Base
  default from: "bigscriv03@gmail.com"

  def monthly(newsletter)
    @newsletter = newsletter
    mail to: "noreply@example.com", bcc: Subscriber.pull,
    subject: "#{@newsletter.title}"
  end
end
