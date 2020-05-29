class MemosController < ApplicationController
  
  def index
    memos = Memo.all
    render :json => memos
  end

  def show
    memo = Memo.find(params[:id])
    render :json => memo
  end

  def create
    memo = Memo.create({
      name: params[:name],
      content: params[:content],
      journal_id: params[:journal_id]
    })

    render :json => memo 
  end

    def update
      memo = Memo.find(params[:id])
      memo.update({
        name: params[:name],
        content: params[:content],
      })
      render :json => memo
    end
    def destroy
      Memo.destroy(Memo.find(params[:id]))
    end
end
