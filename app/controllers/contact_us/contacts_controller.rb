class ContactUs::ContactsController < ApplicationController

  def create
    @contact = ContactUs::Contact.new(params[:contact_us_contact])

    if @contact.save
      redirect_to('/', :notice => t('contact_us.notices.success'))
    else
      flash[:error] = t('contact_us.notices.error')
      redirect_to root_path
    end
  end

  def new
    @contact = ContactUs::Contact.new
    # @body_id = 'contact-us'
  end

end
