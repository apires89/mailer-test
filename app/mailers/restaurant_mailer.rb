class RestaurantMailer < ApplicationMailer
  def confirmation(restaurant)
    @restaurant = restaurant

    mail(
      to: @restaurant.user.email,
      subject: "Restaurant #{@restaurant.name} was created!"

    )

  end

end
