  class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
    include SessionsHelper
    before_action :set_calendar_constants

    def require_login
      return if current_user

      flash[:danger] = 'Googleログインが必要です'
      redirect_to root_path
    end
  
    
  
    # ページ出力前に1ヶ月分のデータの存在を確認・セットします。
    
    
    private

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
  
    def logged_in?
      !!current_user
    end
  
    def require_login
      unless logged_in?
        flash[:alert] = "ログインしてください"
        redirect_to login_path
      end
    end

    def set_calendar_constants
      @days_of_the_week = %w(日 月 火 水 木 金 土)
    end
  end

