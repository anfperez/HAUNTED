class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :destroy]
    before_action :correct_user,   only: [:edit, :update]
    before_action :admin_user,     only: :destroy

    def index
       @users = User.paginate(page: params[:page])
    end

def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])

end

def new
  	@user = User.new
end

def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

def create
	@user = User.new(user_params)    # Not the final implementation!
  if @user.save
  	log_in @user
  	flash[:success] = "Welcome to the Sample app!"
      # Handle a successful save.
  else
    render 'new'
  end

  def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

   def log_out
   forget(current_user)
    session.delete(:user_id)
    @current_user = nil
    end
end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  def destroy
     User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

  def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end

