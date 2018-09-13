class UserMailer < ApplicationMailer
  default from: 'test@example.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/session/new'
    mail(to: user.email, subject: 'Welcome to My Awesome Site')
  end
end
