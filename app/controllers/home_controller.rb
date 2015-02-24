class HomeController < ApplicationController
  acts_as_token_authentication_handler_for User, fallback_to_devise: false

  def index
    message = current_user.presence ? 'You are successfully authenticated!' : 'No authentication is required.'
    render json: { current_user: current_user.try(:email), message: message }
  end
end
