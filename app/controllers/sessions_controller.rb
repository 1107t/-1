class SessionsController < ApplicationController
  def new
    redirect_to root_path if logged_in?
  end

  def create
    unless params[:commit] == "ログイン"
      # Fixed syntax error by removing extra parenthesis
      user = User.find_or_create_from_auth_hash(auth_hash)
      log_in user
      redirect_to root_path
    else
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        # Simplified redundant if/else condition
        redirect_back_or root_url
      else
        flash.now[:danger] = '認証に失敗しました。'
        render :new
      end
    end
  end

  # Fixed indentation and missing end keyword
  def find_or_create_from_auth_hash(auth_hash)
    email = auth_hash['info']['email']
    User.find_or_create_by(email: email) do |user|
      user.update(email: email)
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path, notice: 'ログアウトしました'
  end

  def failure
    redirect_to root_path, alert: '認証に失敗しました'
  end

  private

  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  def auth_hash
    request.env['omniauth.auth']
  end
end