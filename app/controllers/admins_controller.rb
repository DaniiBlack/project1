class AdminsController < ApplicationController
   before_action :check_for_admin, :only => [:index]

    def index
        @admins = Admin.all
    end

    def new 
        @admin = Admin.new
    end

    def create
        @admin = Admin.new admin_params
        if @admin.save
            session[:admin_id] = @admin.id
            redirect_to root_path
        else
            render :new
        end
    end

    private
    def admin_params
        params.require(:admin).permit(:email, :password, :password_confirmation)
    end
end