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

    def do
    @User = User.find_by(id: session[:id])
    if @User.authenticate(name: params[:name], pass: params[:pass])
          session[:id] = user.id
          redirect_to '/login'
        else
          render :new
        end
    end
end
