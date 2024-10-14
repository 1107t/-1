class AttendancesController < ApplicationController
 
 def edit_basic_info
      @user = User.find(params[:id])
    
      respond_to do |format|
        format.html { render partial: 'attendances/edit_basic_info', locals: { user: @user } }
        format.turbo_stream
      end
  end

  def update_basic_info
  end
end  