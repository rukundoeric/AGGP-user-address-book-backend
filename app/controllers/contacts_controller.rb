class ContactsController < ApplicationController
  before_action :set_contact, only: %i[show update destroy]

  def index
    q = request.query_parameters[:q]
    @contacts = if q
                  Contact.search(q)
                else
                  Contact.all
                end
    render :all, formats: :json, status: :ok
  end

  def create
    @contact = Contact.new(contact_params)
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
    params.require(:contact).permit(:first_name, :last_name, :phonenumbers, :emails)
  end
end
