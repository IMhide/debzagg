class EventsController < ApplicationController
  def index
    @organized_events = current_user.organized_events
  end

  def create
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(events_params.merge(user: current_user))

    if @event.save
      redirect_to events_path
    else
      render 'new'
    end
  end

  def destroy
  end

  def show
  end

  private

  def events_params
    params.require(:event).permit(:name, :start_at, :end_at)
  end
end
