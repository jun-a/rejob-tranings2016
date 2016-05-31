class EditThController < ApplicationController
  def update

    # Jobテーブルのすべてのデータを取ってくるのではなくてFind byなどでいずれかのデータを取ってくる。
    # 同じデータを入れないと始めに始めに入れたデータちがくなる。
    #jobテーブル１件をidを元に戻してアップデート（パラメータで撮ってきた値を入れる。）
    @job_id = params[:id]
    @edit = Job.find_by(id: @job_id)
    if @edit.update(name: params[:name],title: params[:title], description: params[:description])
      flash[:success] = "編集完了しました。"
      redirect_to '/admin'
    else
      flash[:notice] = "編集できませんでした"
      redirect_to '/top'
    end
  end

  def job_destroy
   Job.find_by(id: params[:id]).destroy
   flash[:success] = "削除いたしました。"
   redirect_to '/admin'
 end

#パラムスidはURLで作る

end
