class SearchController < ApplicationController
  def do
    @jobs = Job.where(name: params[:city])
    @area = params[:name]
  end
end
