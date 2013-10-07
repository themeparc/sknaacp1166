class Contact < ActionMailer::Base
  default from: "contact@sknaacp1166.org"

  def send_contact_form(message)
    @message = message
    mail to: 'salemkeizernaacp@gmail.com', from: @message[:email], subject: "New message from sknaacp1166.org"
  end
end
