class SessionsController < ApplicationController
skip_before_action :authenticate, only: [:login, :create]

    def create
        @user = User.find_by(username: params[:user][:username])
            if @user && @user.authenticate(params[:user][:password])
                jwt = Auth.encode({jwt: jwt})
            ender json: {jwt: jwt}
            else 
                render json: {
                    error: "Try Again, Bub!"
                    details: @user.errors.full_messages
                }
                render json:resp, status: :unauthorized
            end
        end

    def current_user
        if logged_in?
            render json: {
                user: user_serializer(current_user)
            }, status: :ok
        else
            render json: {
                error: "Try again, Bub!"
            }
        end
    end
end

