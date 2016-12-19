class GroupEventsController < ApplicationController
  expose(:group_events) { GroupEvent.actives }
  expose(:group_event, attributes: :group_event_params)
  
  def index; end
  def new;   end
  def edit;  end
    
  def create
    if group_event.save
      redirect_to group_events_path, notice: "Group Event was been sucessfully created."
    else
      render :new
    end
  end
  
  def update
    if group_event.save
      redirect_to group_events_path, notice: "Group Event was been sucessfully updated."
    else
      render :edit
    end
  end

  def delete
    group_event.update_attributes(deleted: true)
    redirect_to group_events_path, notice: "Group Event was been sucessfully deleted."
  end

protected

  def group_event_params
    params.require(:group_event).permit(:started_at, :duration, :name, :description, :location, :published)
  end
end