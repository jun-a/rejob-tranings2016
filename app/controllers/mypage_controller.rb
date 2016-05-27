class MypageController < ApplicationController
  def do
  
    @job = User.find_by(id: params[:id])
    @jobap = JobsUser.where(user_id: params[:id])

    @user = User.find_by(id: params[:id])
    if session[:user_id] == params[:id].to_i
    else
      redirect_to "/top"
    end
  end
end
