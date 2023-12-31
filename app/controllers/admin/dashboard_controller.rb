module Admin
  class DashboardController < ApplicationController
    before_action :authenticate_user!
    before_action :check_admin

    layout 'admin'

    def index
    end

    private

    def check_admin
      unless current_user.admin?
        redirect_to root_path, alert: "You are not allowed to access this page."
      end
    end
  end
end