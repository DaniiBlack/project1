class ResourcesController < ApplicationController
    before_action :check_for_login, :only => [:create, :new]

    def index
        @resources = Resource.search(params[:search])
    end

    def new
        @resource = Resource.new
    end

    def show
        @resource = Resource.find params[:id]
    end


    def create
        resource = Resource.create resource_params
        @current_admin.resources << resource
        redirect_to root_path
    end

    private
    def resource_params
        params.require(:resource).permit(:title, :id, :resource_type, :search)
    end

end
