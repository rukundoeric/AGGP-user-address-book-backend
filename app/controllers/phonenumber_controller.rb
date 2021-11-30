class PhonenumberController < ApplicationController
  before_action :set_contact, only: %i[index create show destroy update]
  before_action :set_current_user, only: %i[index create show destroy update]
  before_action :set_phone, only: %i[show update destroy]

  def create
    @phonenumber = @contact.phonenumbers.new(phonenumber: params[:phonenumber])
    if @phonenumber.save
      render :create, formats: :json, status: :created
    else
      @error = @phonenumber.errors
      render :error, formats: :json, status: :unprocessable_entity
    end
  end

  def update
    if @phonenumber.update(phonenumber: params[:phonenumber])
      render :update, formats: :json, status: :ok
    else
      @error = @phonenumber.errors
      render :error, formats: :json, status: :unprocessable_entity
    end
  end

  def destroy
    @phonenumber.destroy
    render :destroy, formats: :json, status: :ok
  end

  private

  def set_contact
    p request.query_parameters[:contact]
    @contact = Contact.find(request.query_parameters[:contact])
  rescue StandardError => e
    @error = e
    render :error, formats: :json, status: :not_found
  end

  def set_phone
    @phonenumber = Phonenumber.find(params[:id])
  rescue StandardError => e
    @error = e
    render :error, formats: :json, status: :not_found
  end
end
