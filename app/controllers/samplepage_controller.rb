class SamplepageController < ApplicationController
  def do
  end
    def do
      if Job.create(name: params[:name],title: params[:title], description: params[:description])
        flash[:notice] = "送信完了"
        redirect_to '/admin'
      else
        flash[:notice] = "送信できませんでした"
        redirect_to '/top'
      end
    end

def create
    if @user.save
          session[:user_id] = user.id
          redirect_to @user, notice:"ユーザー登録に成功"
        else
          render :new
        end

end
