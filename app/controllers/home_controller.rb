class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: { current_user: current_user.try(:email), message: 'You are successfully authenticated!' }
  end
end
