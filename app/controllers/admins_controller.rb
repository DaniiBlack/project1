class AdminsController < ApplicationController
   before_action :check_for_login, :only => [:index]

    def index
        
    end

    def new 
        @admin = Admin.new
    end

    def create
        @admin = Admin.new admin_params
        if @admin.save
            session[:admin_id] = @admin.id
            redirect_to admins_path
        else
            render :new
        end
    end

    private
    def admin_params
        params.require(:admin).permit(:email, :username, :password, :password_confirmation)
    end
end

# Image, title, add a new resource button, make name a link back to their page annnddd heading "your shared sources"