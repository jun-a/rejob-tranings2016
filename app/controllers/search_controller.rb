class SearchController < ApplicationController
  def do
    @jobs = Job.where(name: params[:city])
    @area = params[:title]

  end
end
