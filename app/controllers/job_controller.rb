class JobController < ApplicationController
  def do

   @job = Job.first.description
    @area = Area.first.city

    # @job_id = params[:id]
    # @job = Job.find_by(id: @job_id)
  end
end
