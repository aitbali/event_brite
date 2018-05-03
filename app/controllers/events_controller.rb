class EventsController < ApplicationController
  def new
  	@event = Event.all
  end

  def create
  	
  	@event = Event.create(description: params[:description],date: params[:date],place: params[:place])
  	@event.creator_id = current_user.id
    if @event.save
     
      redirect_to event_path(@event)
    else
      render 'users/home'
    end
  end

  def edit
  	@event = Event.find(params[:id])	
  end

  def show
  	@event = Event.find(params[:id])
  end

  def destroy
  end


  def index
  	@event = Event.all
  end


end
