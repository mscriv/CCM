class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      ContactForm.email_form(@message).deliver
      # TODO send message here
      redirect_to root_url, notice: "Thank you for contacting us. We will be contacting you within two business days."
    else
      render "new"
    end
  end

  private


end
