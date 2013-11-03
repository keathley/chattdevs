class EventsController < ApplicationController
  def index
    @events = Event.approved
  end

  def new
    @event = Event.new
  end

  def create
    @event = EventNotifier.new(Event.new(event_params))

    if @event.save
      redirect_to events_path
    else
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :starts_at, :email, :link)
  end
end
