class JobController < ApplicationController
  def do

    @job = Job.first.description
    @area = Area.first.city

    
  end
end
