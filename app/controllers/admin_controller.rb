class AdminController < ApplicationController
  def do
    @jobs = Job.where(city: params[:city])
    @area = params[:name]
    @job = Job.all
    @jobap = JobsUser.where(user_id: params[:id])
  end
end
