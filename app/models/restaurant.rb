class Restaurant < ApplicationRecord
  belongs_to :user
  #after_create :send_confirmation

  private

  def send_confirmation
    RestaurantMailer.confirmation(self).deliver_now
  end
end
