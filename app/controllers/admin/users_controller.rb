class Admin::UsersController < AdministrationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    redirect admin_new_user_path
  end

  def create
    binding.pry
    User.invite!({email: user_params}, current_user)
  end

private
  def user_params
    params.require(:user).permit(:email)
  end
end
