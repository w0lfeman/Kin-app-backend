class UsersController < ApplicationController

    before_action :define_selected_user
    skip_before_action :authenticate, only: [ :create ]

    def index
        @users = User.all
        render json: @users
    end

    def show
        render json: selected_user
    end

    def new
        render json: User.new
    end

    def create
        user = User.create(user_params)
        render json: user, methods: [ :token ]
    end

    def update
        selected_user.update(user_params)
        render json: selected_user
    end

    def destroy
        selected_user.destroy
        render json: selected_user
    end

    def user_params
        params.permit(:firstname, :lastname, :username,
        :password, :phone_number, :pincode)
    end

    def define_selected_user
        if params[:id]
            @selected_user = User.find(params[:id])
        else
            @selected_user = User.new
        end
    end

    def selected_user
        @selected_user
    end
    
end
