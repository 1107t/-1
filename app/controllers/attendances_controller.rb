class AttendancesController < ApplicationController
    class ApplicationController < ActionController::Base
        protect_from_forgery with: :exception
        include SessionsHelper
      
        $days_of_the_week = %w{日 月 火 水 木 金 土}
      
        # ページ出力前に1ヶ月分のデータの存在を確認・セットします。
        def set_one_month 
          @first_day = Date.current.beginning_of_month
          @last_day = Date.current.end_of_month
          one_month = [*@first_day..@last_day]
          
        end
      end
 
end  