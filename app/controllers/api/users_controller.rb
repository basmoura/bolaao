module API
  class UsersController < ActionController::Base
    def index
      render json: User.all
    end

    def create
      user = User.new(user_params)
      render json: user, location: user_path(user) if user.save
    end

    private
    def user_params
      params.require(:user).permit(:sid, :name)
    end
  end
end
