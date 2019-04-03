class UsersController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = current_user
        if @user
            render json: @user
        else
            render json: {
                msg: "Não há usuário logado",
            }
        end
    end
end
