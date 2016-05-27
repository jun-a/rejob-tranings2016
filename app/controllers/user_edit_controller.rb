class UserEditController < ApplicationController
  def user_edit
    @user_id = params[:id]
    @edit = User.find_by(id: @user_id)
  end
end
