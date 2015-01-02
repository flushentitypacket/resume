class ContactsController < ApplicationController
  # GET /contacts/1
  def show
    @contact = Contact.find(params[:id])
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      render :show
    else
      render :new
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def contact_params
    params.require(:contact).permit(:name, :phone_number, :email, :comments)
  end
end
