class UserMailer < ApplicationMailer
  default from: 'bloomjuiceco@gmail.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Bloom Juice Co!')
  end

end
