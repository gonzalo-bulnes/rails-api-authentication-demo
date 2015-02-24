class HomeController < ApplicationController
  acts_as_token_authentication_handler_for User, fallback_to_devise: false

  def index
    render json: { current_user: current_user.try(:email), message: 'You are successfully authenticated!' }
  end
end
