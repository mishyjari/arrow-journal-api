class EventsController < ApplicationController
  def index
    events = Event.all
    render :json => Event.all 
  end
end
