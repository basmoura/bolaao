module API
  class UsersController < AplicationController
    def create
      user = User.new(user_params)
      if user.save
        respond_with user
      else
        respond_with false
      end
    end

    private
    def user_params
      params.require(:user).permit(:sid, :name)
    end
  end
end
