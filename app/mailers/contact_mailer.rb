class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contacted.subject
  #
  def contacted
    @user = params[:user] # Instance variable => available in view
    mail(to: "lesproblemesmag@gmail.com", subject: "Nouveau message d'un(e) fan")
  end
end
