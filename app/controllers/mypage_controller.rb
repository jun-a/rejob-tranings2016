class MypageController < ApplicationController
  def do
    @user = User.find_by(id: params[:id])
    if session[:user_id] == params[:id].to_i
    else
      redirect_to "/top"
    end
  end
end
