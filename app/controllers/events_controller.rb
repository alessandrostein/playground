class EventsController < InheritedResources::Base

  def create
    @event = Event.create(require_parameters)
    redirect_to action: :index
  end

  def update
    @event = load_model
    @event.update_attributes(require_parameters)
    redirect_to action: :index
  end

  private

  def require_parameters
    params[:event].permit(:address, :number, :complement, :city)
  end

  def load_model
    @event = Event.find(params[:id])
  end

end
