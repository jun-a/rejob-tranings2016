class TopController < ApplicationController
  def do
    #@trend = params[:trend]
   params[:trend] #sakuraが来ている
   @jobs = Job.where(name: params[:trend]) #案件名がアルバイト大募集のものを検索
  end
end
