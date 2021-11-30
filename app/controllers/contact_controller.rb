class ContactController < ApplicationController
  before_action :set_current_user, only: %i[index create show destroy update]
  before_action :set_contact, only: %i[show update destroy]

  def index
    @contacts = current_user.contacts
    render :all, formats: :json, status: :ok
  end

  def create
    @contact = current_user.contacts.new(contact_params)
    if @contact.save
      render :create, formats: :json, status: :created
    else
      @error = @contact.errors
      render :error, formats: :json, status: :unprocessable_entity
    end
  end

  def show
    render :show, formats: :json, status: :ok
  end

  def update
    if @contact.update(contact_params)
      render :update, formats: :json, status: :ok
    else
      @error = @contact.errors
      render :error, formats: :json, status: :unprocessable_entity
    end
  end

  def destroy
    @contact.destroy
    render :destroy, formats: :json, status: :ok
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  rescue StandardError => e
    @error = e
    render :error, formats: :json, status: :not_found
  end

  def contact_params
    params.require(:contact).permit(:first_name, :last_name)
  end
end
