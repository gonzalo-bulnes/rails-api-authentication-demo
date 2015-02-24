class HomeController < ApplicationController
  acts_as_token_authentication_handler_for User, fallback_to_devise: false
  before_action :require_authentication!, only: :restricted_index

  def index
    message = current_user.presence ? 'You are successfully authenticated!' : 'No authentication is required.'
    render json: { current_user: current_user.try(:email), message: message }
  end

  def restricted_index
    require_authentication!
    message = current_user.presence ? 'You are successfully authenticated!' : 'If you see this message, authentication is not required.'
    render json: { current_user: current_user.try(:email), message: message }
  end

  private

    def require_authentication!
      throw(:warden, scope: :user) unless current_user.presence
    end
end
