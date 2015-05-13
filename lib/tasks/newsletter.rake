task :send_newsletter => :environment do
  Subscriber.all.each do |subscriber|
    NewsletterMailer.monthly(@newsletter).deliver
  end
end
