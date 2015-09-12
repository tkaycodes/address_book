class Api::V1::ContactsController < ApplicationController
  protect_from_forgery with: :null_session

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
      render json: {error: "Sorry could not be created, #{@contact.errors.full_messages}"}, status: 422
    end
  end

  def update
    @contact=Contact.find_by_id(params[:id])
    if @contact
      if @contact.update_attributes(contact_params)
        render json: {note: "Contact Updated"}, status:200
      else
        render json: {error: "Couldnt Update, #{@contact.errors.full_messages}"}, status: 422
      end
    else
      render json: {error: "Contact with that id dosnt exist"}
    end
  end

  def destroy
    @contact=Contact.find_by_id(params[:id])
    if @contact 
        if @contact.delete
          render json: {note: "Contact Deleted"}, status:200
        else
          render json: {error: "Contact Delete #{@contact.errors.full_messages}"}, status: 422
        end
    else
      render json: {error: "Contact with that id dosnt exist"}
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone_number)
  end

end
