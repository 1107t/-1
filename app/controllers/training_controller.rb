class TrainingController < ApplicationController
  def training_abs
    @users = User.all
  end
  
  def update_abs_modal
    @user = User.find(params[:id])
    puts params[:user][:abs]
    if @user.update(user_params)
      flash[:success] = "トレーニングメニューを登録しました。"
      redirect_to user_url(@user)  # 保存成功時のリダイレクト
    else
      flash[:error] = "トレーニングメニューを登録に失敗しました。"
      render :edit  # 失敗時にエラーメッセージを表示
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
      redirect_to user_url(@user)  # 保存成功時のリダイレクト
    else
      flash[:error] = "トレーニングメニューを登録に失敗しました。"
      render :edit  # 失敗時にエラーメッセージを表示
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
      redirect_to user_url(@user)  # 保存成功時のリダイレクト
    else
      flash[:error] = "トレーニングメニューを登録に失敗しました。"
      render :edit  # 失敗時にエラーメッセージを表示
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
      redirect_to user_url(@user)  # 保存成功時のリダイレクト
    else
      flash[:error] = "トレーニングメニューを登録に失敗しました。"
      render :edit  # 失敗時にエラーメッセージを表示
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
      redirect_to user_url(@user)  # 保存成功時のリダイレクト
    else
      flash[:error] = "トレーニングメニューを登録に失敗しました。"
      render :edit  # 失敗時にエラーメッセージを表示
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
      redirect_to user_url(@user)  # 保存成功時のリダイレクト
    else
      flash[:error] = "トレーニングメニューを登録に失敗しました。"
      render :edit  # 失敗時にエラーメッセージを表示
    end
  end
