class EditThController < ApplicationController
  def do
  end

  def update

    # Jobテーブルのすべてのデータを取ってくるのではなくてFind byなどでいずれかのデータを取ってくる。
    # 同じデータを入れないと始めに始めに入れたデータちがくなる。
    #jobテーブル１件をidを元に戻してアップデート（パラメータで撮ってきた値を入れる。）
    @job_id = params[:id]
    @edit = Job.find_by(id: @job_id)
    if @edit.update(name: params[:name],title: params[:title], description: params[:description])
      flash[:notice] = "送信完了"
      redirect_to '/admin'
    else
      flash[:notice] = "送信できませんでした"
      redirect_to '/top'
    end
  end

  def job_destroy
   Job.find_by(id: params[:id]).destroy
   redirect_to '/admin'
 end
end
#パラムスidはURLで作る
