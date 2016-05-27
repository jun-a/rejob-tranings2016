class SamplepageController < ApplicationController

  def do
      if Job.create(name: params[:name],title: params[:title], description: params[:description])
        flash[:notice] = "送信完了"
        redirect_to '/admin'
      else
        flash[:notice] = "送信できませんでした"
        redirect_to '/top'
    end
  end

    def regist
      if User.create(name: params[:name],name_kana: params[:name_kana], age: params[:age],sex: params[:sex], pass: params[:pass], pass2: params[:pass2])
        flash[:notice] = "登録完了しました"
        redirect_to '/admin_user'
      else
        flash[:notice] = "送信できませんでした"
        redirect_to '/newregist'
      end
    end
end
