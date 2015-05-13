class Subscriber < ActiveRecord::Base

  scope :pull, -> { Subscriber.pluck(:email) }

end
