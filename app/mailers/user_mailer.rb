class UserMailer < ApplicationMailer

  def notify_user_deleted
    @user = params[:user]
    mail(to: 'gsorry@gmail.com', subject: "User Deleted #{@user.display_name}")
  end

end