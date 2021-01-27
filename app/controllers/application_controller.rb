class ApplicationController < ActionController::Base
    before_action :fetch_admin

    private
    def fetch_admin
        @current_admin = Admin.find_by :id => session[:admin_id] if session[:admin_id].present?
        session[:admin_id] = nil unless @current_admin.present?
    end

    def check_for_login
        redirect_to login_path unless @current_admin.present?
    end
end
