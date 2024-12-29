class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :edit_basic_info, :update_basic_info]
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy, :edit_basic_info, :update_basic_info]
  before_action :correct_user, only: [:edit, :update]
  before_action :set_one_month, only: :show
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @first_day = params[:date].nil? ? 
    Date.current.beginning_of_month : 
    params[:date].to_date.beginning_of_month
    @training_histories = @user.training_histories
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
    @user = User.find(params[:id])
    target_part = params[:user][:target_part]
    menu_content = params[:user][:menu_content]
  
    if @user.update("#{target_part}": menu_content)
      flash[:success] = "メニューを更新しました"
      redirect_to workout_menu_user_path(@user)
    else
      flash[:danger] = "更新に失敗しました"
      redirect_to workout_menu_user_path(@user)
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user == current_user
      @user.destroy
      redirect_to root_path, notice: 'アカウントを削除しました'
    else
      redirect_to users_path, alert: '削除権限がありません'
    end
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
  
  def update_abs_modal
    @user = User.find(params[:id])
    puts params[:user][:abs]
    if @user.update(user_params)
      flash[:success] = "トレーニングメニューを登録しました。"
      redirect_to user_url(@user)
    else
      flash[:error] = "トレーニングメニューを登録に失敗しました。"
      render :edit
    end
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
    @user = User.find(params[:id])
    puts params[:user][:arms]
    if @user.update(user_params)
      flash[:success] = "トレーニングメニューを登録しました。"
      redirect_to user_url(@user)
    else
      flash[:error] = "トレーニングメニューを登録に失敗しました。"
      render :edit
    end
  end
 
  def training_back
    @users = User.all
  end 

  def training_back_modal
    @user = User.find(params[:id])
  end 

  def update_back_modal
    @user = User.find(params[:id])
    puts params[:user][:back]
    if @user.update(user_params)
      flash[:success] = "トレーニングメニューを登録しました。"
      redirect_to user_url(@user)
    else
      flash[:error] = "トレーニングメニューを登録に失敗しました。"
      render :edit
    end
  end

  def training_chest
    @users = User.all
  end 

  def training_chest_modal
    @user = User.find(params[:id])
  end

  def update_chest_modal
    @user = User.find(params[:id])
    puts params[:user][:chest]
    if @user.update(user_params)
      flash[:success] = "トレーニングメニューを登録しました。"
      redirect_to user_url(@user)
    else
      flash[:error] = "トレーニングメニューを登録に失敗しました。"
      render :edit
    end
  end
  
  def training_shoulder
    @users = User.all
  end 

  def training_shoulder_modal
    @user = User.find(params[:id])
  end

  def update_shoulder_modal
    @user = User.find(params[:id])
    puts params[:user][:shoulder]
    if @user.update(user_params)
      flash[:success] = "トレーニングメニューを登録しました。"
      redirect_to user_url(@user)
    else
      flash[:error] = "トレーニングメニューを登録に失敗しました。"
      render :edit
    end
  end

  def training_thighs
    @users = User.all
  end 

  def training_thighs_modal
    @user = User.find(params[:id])
  end

  def update_thighs_modal
    @user = User.find(params[:id])
    puts params[:user][:thighs]
    if @user.update(user_params)
      flash[:success] = "トレーニングメニューを登録しました。"
      redirect_to user_url(@user)
    else
      flash[:error] = "トレーニングメニューを登録に失敗しました。"
      render :edit
    end
  end

  def work_out
    @users = User.all
  end  

  def workout_menu
    @user = User.find(params[:id])
    @training_history = TrainingHistory.new  # 新規記録用のインスタンスを作成
    @training_histories = TrainingHistory.where(user_id: @user.id)  # 履歴一覧用
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :arms, :abs, :chest, :back, :shoulder, :thighs)
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