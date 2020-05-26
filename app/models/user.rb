class User < ApplicationRecord
  after_destroy :notify_user_deleted
  after_validation :update_display_name
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  # validates :email, presence: true, length: { minimum: 3 }
  # validates :password, presence: true, length: { minimum: 8, maximum: 16 }
  validates :first_name, presence: true
  validates :last_name, presence: true

  private

    def update_display_name
      self.display_name = self.first_name + ' ' + self.last_name
    end

    def notify_user_deleted
      # Tell the UserMailer to send a welcome email after save
      UserMailer.with(user: self).delay.notify_user_deleted.deliver_later
    end

end
