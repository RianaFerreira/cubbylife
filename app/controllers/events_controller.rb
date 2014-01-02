class EventsController < ApplicationController
  def index
    @events = Event.order(:start)
    @next_event = @events.first
    @participation = EventParticipation.new
    redirect_to event_path(@next_event.id)
  end

  def show
    @units = []

    #determine what to display in events based on user role
    #if admin they must have a list of all units to chose from
    #if user their unit must be inferred
    @next_event = Event.find(params[:id])

    if @authenticated.is_admin?
      @units = Unit.all
      @participants = EventParticipation.where( :event_id => @next_event.id)
      @participants.each do |participation|
        @units.delete(participation.unit)
      end

    else
      @units << @authenticated.tenant.unit
      @participation = EventParticipation.where(:unit_id => @authenticated.tenant.unit.id, :event_id => @next_event.id).first
    end

   @events = Event.order(:start)
   @participation = EventParticipation.new unless @participation

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