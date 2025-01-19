# app/controllers/training_histories_controller.rb
class TrainingHistoriesController < ApplicationController
  before_action :logged_in_user
  
  def create
    @training_history = current_user.training_histories.build(training_history_params)
    
    if @training_history.save
      flash[:success] = "トレーニングを記録しました"
      redirect_to workout_menu_user_path(current_user)
    else
      flash[:danger] = "記録に失敗しました"
      redirect_to workout_menu_user_path(current_user)
    end
  end

  def destroy
    @training_history = TrainingHistory.find(params[:id])
    if @training_history.user_id == current_user.id
      @training_history.destroy
      respond_to do |format|
        format.html { redirect_to workout_menu_user_path(current_user), notice: '記録を削除しました' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to workout_menu_user_path(current_user), alert: '削除権限がありません' }
        format.json { render json: { error: '権限がありません' }, status: :unauthorized }
      end
    end
  end

  private

  def training_history_params
    params.require(:training_history).permit(:content, :body_part, :weight, :sets, :reps)
  end
end