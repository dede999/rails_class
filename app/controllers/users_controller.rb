class UsersController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = current_user
        unless @user
            render json: {
                msg: "Não há usuário logado",
            }
        end
        @user
    end
end
