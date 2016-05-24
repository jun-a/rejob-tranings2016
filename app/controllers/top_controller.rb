class TopController < ApplicationController
  def do
    @jobs = Job.where(name: params[:city])
    @area = params[:title]
    
   @job_id = params[:id]
   @job = Job.find_by(id: @job_id)
  end
end
