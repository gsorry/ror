class User < ApplicationRecord
  # Generic user

  # Notify about deleted user by sending email
  after_destroy :notify_user_deleted

  # concatenation of first_name and last_name, separated by a space, every time the users firstname or lastname changes.
  after_validation :update_display_name

  # Include selected devise modules.
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  # First name and last name validatons
  validates :first_name, presence: true
  validates :last_name, presence: true

  # Profile image
  has_one_attached :image

  private

    def update_display_name
      self.display_name = self.first_name + ' ' + self.last_name
    end

    def notify_user_deleted
      # Tell the UserMailer to send a welcome email after save
      UserMailer.delay.notify_user_deleted(self)
    end

end
