class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      # ContactsMailer.general_message(@contact).deliver
      redirect_to root_path, notice: "Votre message a bien été envoyé, merci !"
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :name, :message)
  end
end
