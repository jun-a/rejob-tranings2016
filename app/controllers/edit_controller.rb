class EditController < ApplicationController

  def edit
      @edit = Job.find(params[:id])
       if @edit.update_attributes(user_params)
         redirect_to '/admin' #, flash[:notice] = "送信完了"
  else      render 'edit'

    end
  end

        def destroy
          @delete = edit.delete
          if job.deletezs
      end
    end
  end
  def do
      Job.create(name: params[:name],title: params[:title], description: params[:description])
    end
