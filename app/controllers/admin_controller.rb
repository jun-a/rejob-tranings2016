class AdminController < ApplicationController
  def do
    @jobs = Job.where(city: params[:city])
    @area = params[:name]
    @job = Job.all
  end
end
