class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  after_create :send_welcome_email, :subscribe

  private

  def send_welcome_email
    UserMailer.welcome.deliver_now
  end

  def subscribe
    SubscribeToNewsletterService.new(self).call
  end
end
