class ClientMailer < ApplicationMailer

  def welcome
    mail(to: 'aidasv@gmail.com', subject: 'Welcome to My Awesome Site')
  end

end
