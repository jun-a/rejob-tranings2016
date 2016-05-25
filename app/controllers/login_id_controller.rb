class LoginIdController < ApplicationController
  def do
    user = User.find_by(name: params[:name])
    if user && user.pass == params[:pass]
          session[:user_id] = user.id
          redirect_to "/mypage?id=#{user.id}"
        else
          redirect_to "/top"
    end
  end

end
