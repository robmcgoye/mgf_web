class ContactFormsController < ApplicationController
  before_action :load_page, only: [:new, :create]

  def new
    @contact = ContactForm.new
  end

  def create
    @contact = ContactForm.new(contact_params)
    if @contact.valid?
      # send email
      # CheckoutMailer.new_order_email(current_user, session[:cart], @address).deliver_now
      flash[:notice] = 'Thank you for your message!'
      redirect_to new_contact_form_path
    else
      render :new
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact_form).permit(:name, :email, :message, :nickname)
    end

    def load_page
      @page = Page.find_by_name(:contact)
    end

end
