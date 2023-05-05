class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_email.subject
  #
  def welcome_email(user)
    @user = user
    @url  = 'http://127.0.0.1:3000/'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
