class TasksController < ApplicationController

  def index
    tasks = Task.all
    render :json => tasks
  end

  def create
    task = Task.create({
      name: params[:name],
      date: params[:date],
      important: params[:important],
      completed: params[:completed],
      journal_id: params[:journal_id]
    })
    render :json => task
  end

end
