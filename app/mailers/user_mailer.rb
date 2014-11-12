class UserMailer < ActionMailer::Base
  default to: Proc.new { Admin.pluck(:email) },
   from: 'notifications@example.com'

    def welcome_email(user)
      @user = user
      @url  = 'http://example.com/login'
      mail(to: @user.email, subject: 'Welcome on this amazing portal')
    end
  end