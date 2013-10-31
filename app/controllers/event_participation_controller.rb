class EventParticipationController < ApplicationController
  def index
    @particpation = EventParticipation.all
  end

  def show
    @participation = EventParticipation.where(:event_id => params[:id])
  end

  def create
    @participation = EventParticipation.new(:event_id => params[:id], :unit_id => params[:event_participation][:unit_id])
    @participation.date = "#{params[:event_participation]['date(1i)']}-#{params[:event_participation]['date(2i)']}-#{params[:event_participation]['date(3i)']}"
    @participation.time = "#{params[:event_participation]['time(4i)']}:#{params[:event_participation]['time(5i)']}"
    @participation.save
    flash[:notice] = "Thanks for registering"
    redirect_to :back
  end
end