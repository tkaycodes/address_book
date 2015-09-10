class Api::V1::ContactsController < ApplicationController
  def index
    @contacts=Contact.all
    render json: @contacts
  end

  def create
    # @contacts=Contact.new
    # render json: "COOL"
    @contact=Contact.new(contact_params)
    if @contact.save
      render json: {note:"Contact Created!"}, status: 200
    else
      render json: {error: "Sorry could not be created."}, status: 422
    end
  end

  def udpdate
  end

  def destroy
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone_number)
  end

end
