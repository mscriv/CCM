class NewsletterMailer < ActionMailer::Base
  default from: "my_email@example.com"

  def monthly(newsletter)
    @newsletter = newsletter
    mail to: Proc.new { Subscriber.pluck(:email) },
    subject: "#{@newsletter.title}"
  end
end
