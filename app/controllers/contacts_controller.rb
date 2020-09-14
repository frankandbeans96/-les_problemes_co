class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ContactsMailer.general_message(@contact).deliver
    else
      render :new, success: "Votre message a bien été envoyé"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :name, :message)
  end
end
