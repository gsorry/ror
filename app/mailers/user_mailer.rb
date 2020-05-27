class UserMailer < ApplicationMailer

  def notify_user_deleted(user)
    @user = user
    mail(to: 'gsorry@gmail.com', subject: "User Deleted #{@user.display_name}")
  end

end
