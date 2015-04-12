class Message
  include ActiveAttr::Model

  attribute :name
  attribute :subject
  attribute :email
  attribute :content
  attribute :priority # type: Integer, default: 0

  validates_presence_of :name, :subject
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :content, :maximum => 500
end