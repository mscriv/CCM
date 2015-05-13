class NewsletterMailer < ActionMailer::Base
  default from: "my_email@example.com"

  def monthly(newsletter)
    @newsletter = newsletter
    mail to: Subscriber.all,
    subject: "#{@newsletter.title}"
  end
end
