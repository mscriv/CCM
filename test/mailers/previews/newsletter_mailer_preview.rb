# Preview all emails at http://localhost:3000/rails/mailers/newsletter_mailer
class NewsletterMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/newsletter_mailer/monthly
  def monthly
    newsletter = Newsletter.last
    NewsletterMailer.monthly(newsletter)
  end

end
