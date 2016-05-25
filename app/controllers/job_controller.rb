class JobController < ApplicationController
  def do

   @job = Job.first.description
    @area = Area.first.city


         end
    def create
      @job_id = params[:id]
      @jobs = Job.find_by(id: @job_id)
        if @jobs.create(name: params[:name],title: params[:title], description: params[:description])
          flash[:notice] = "送信完了"
          redirect_to '/admin'
        else
          flash[:notice] = "送信できませんでした"
          redirect_to '/top'
      end
    # @job_id = params[:id]
    # @job = Job.find_by(id: @job_id)
  end
end
