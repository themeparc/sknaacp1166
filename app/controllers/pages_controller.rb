class PagesController < ApplicationController
  def index
  end

  def send_message
    @message = {}
    @message[:name] = params[:name]
    @message[:email] = params[:email]
    @message[:message] = params[:message]
    Contact.send_contact_form(@message).deliver
    redirect_to '/', notice: "Your message has been sent"
  end
end
