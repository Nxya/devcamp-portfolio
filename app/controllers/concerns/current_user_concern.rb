module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Traveller Traveller"
    guest.first_name = "Traveller"
    guest.last_name = "Traveller"
    guest.email = "guest@example.com"
    guest
  end
end