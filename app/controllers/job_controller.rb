class JobController < ApplicationController
  def do

   @job = Job.first.description
    @area = Area.first.city
    @jobs = User.find_by(id: params[:id])
  @JOB = params[:id]
  end

      def create
         if session[:user_id].present?
    JobsUser.create(job_id: params[:job_id], user_id: session[:user_id])

          flash[:success] = "応募が完了しました!"
          redirect_to "/mypage?id=#{session[:user_id]}"
        else
          flash[:danger] = 'ログインしてください'
          redirect_to "/login/mypage"
    # @job_id = params[:id]
    # @job = Job.find_by(id: @job_id)
  end
end
end
