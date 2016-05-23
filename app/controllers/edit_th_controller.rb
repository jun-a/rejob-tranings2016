class EditThController < ApplicationController
  def do
  end

  def update

    # Jobテーブルのすべてのデータを取ってくるのではなくてFind byなどでいずれかのデータを取ってくる。
    if Job.update(name: params[:name],title: params[:title], description: params[:description])
      flash[:notice] = "送信完了"
      redirect_to '/admin'
    else
      flash[:notice] = "送信できませんでした"
      redirect_to '/top'
    end
  end
end
