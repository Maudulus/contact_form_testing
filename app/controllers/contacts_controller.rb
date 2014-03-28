class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(issue_params)

    if @contact.save
      redirect_to @contact, notice: "Contact was successfully created."
    else
      render action: 'new'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_url
  end

  private

  def issue_params
    params.require(:contact).permit(:first_name, :last_name, :subject, :description, :email)
  end


end
