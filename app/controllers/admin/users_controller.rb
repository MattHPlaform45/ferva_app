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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update user_params
    redirect_to admin_users_path(@user.id)
  end
private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
