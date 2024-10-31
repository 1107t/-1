class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :edit_basic_info, :update_basic_info]
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy, :edit_basic_info, :update_basic_info]
  before_action :correct_user, only: [:edit, :update]
  before_action :set_one_month, only: :show
  
  

  def show
    @user = User.find(params[:id])
    @first_day = Date.current.beginning_of_month
    @last_day = Date.current.end_of_month
    @attendances = @user.attendances.where(worked_on: @first_day..@last_day)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = '新規作成に成功しました。'
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "ユーザー情報を更新しました。"
      redirect_to @user
    else
      render :edit      
    end
  end

  def destroy
    @user.destroy
    flash[:success] = "#{@user.name}のデータを削除しました。"
    redirect_to users_url
  end

  def edit_basic_info
    @user = User.find(params[:id])
  end

  def update_basic_info
  end
  
  def muscle_parts_page
    @user = User.find(params[:id])
  end  
  
  def training_abs
    @users = User.all
  end

  def training_abs_modal
    @user = User.find(params[:id])
  end

  def training_arms
    @users = User.all
  end

  def training_arms_modal
    @user = User.find(params[:id])
  end  

  def update_arms_modal 
  end
 
  def training_back
    @users = User.all
  end 

  def training_back_modal
    @user = User.find(params[:id])
  end 

  def training_chest
    @users = User.all
  end 

  def training_chest_modal
    @user = User.find(params[:id])
  end
  
  def training_shoulder
    @users = User.all
  end 

  def training_shoulder_modal
    @user = User.find(params[:id])
  end

  def training_thighs
    @users = User.all
  end 

  def training_thighs_modal
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    # beforeフィルター

    # paramsハッシュからユーザーを取得します。
    def set_user
      @user = User.find(params[:id])
    end

    # ログイン済みのユーザーか確認します。
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "ログインしてください。"
        redirect_to login_url
      end
    end

    # アクセスしたユーザーが現在ログインしているユーザーか確認します。
    def correct_user
      redirect_to(root_url) unless current_user?(@user)
    end

    
end