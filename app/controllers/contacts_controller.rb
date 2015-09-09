class ContactsController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    # render text: params
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: "Contact Created"
    else
      flash[:alert] = "Couldnt Create"
      render 'new'
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone_number)
  end

end
