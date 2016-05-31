class UserThController < ApplicationController
    def update
      @user_id = params[:id]
      @user_edit = User.find_by(id: @user_id)
      if @user_edit.update(name: params[:name],name_kana: params[:name_kana], age: params[:age],sex: params[:sex])
        flash[:notice] = "新規登録完了しました。"
        redirect_to "/admin_user_user"
      else
        flash[:notice] = "新規登録できませんでした"
        redirect_to "/search"
      end
  end

  def user_destroy
   User.find_by(id: params[:id]).destroy
   redirect_to '/admin_user_user'
 end
end
