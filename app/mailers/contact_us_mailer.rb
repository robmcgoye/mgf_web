class ContactUsMailer < ApplicationMailer

  def send_message(contact_form)
    @contact = contact_form
    mail(to: @contact.email, subject: 'Contact Us Message')
  end

end
