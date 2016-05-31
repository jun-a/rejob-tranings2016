class UserEditController < ApplicationController
  def user_edit
    @user = User.find_by(id: params[:id])
  end
end
