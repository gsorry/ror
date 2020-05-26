# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def notify_user_deleted
    UserMailer.with(user: User.first).notify_user_deleted
  end

end
