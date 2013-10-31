class EventsController < ApplicationController
  def index
    @events = Event.order(:start)
    @next_event = @events.first
    @participation = EventParticipation.new
  end

  def show
   @next_event = Event.find(params[:id])
   @events = Event.order(:start)
   @participation = EventParticipation.where(:unit_id => @authenticated.tenant.unit.id, :event_id => @next_event.id).first
   @participation = EventParticipation.new unless @participation
   #raise @participation.inspect
   render "index"
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to event_path(@event.id)
    else
      render "new"
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to event_path(@event.id)
    else
      render "edit"
    end
  end

  def delete
    event = Event.find(params[:id])
    event.destroy
    redirect_to events_path
  end

end