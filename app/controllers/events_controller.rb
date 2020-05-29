class EventsController < ApplicationController
  def index
    events = Event.all
    render :json => Event.all
  end

  def create
    event = Event.create({
      name: params[:name],
      location: params[:location],
      start_date: params[:start_date],
      end_date: params[:end_date],
      journal_id: params[:journal_id]
      })
    render :json => event
  end

  def update
    event = Event.find(params[:id])
    event.update({
      name: params[:name],
      location: params[:location],
      start_date: params[:start_date],
      end_date: params[:end_date]
      })
    render :json => event
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
  end
end
