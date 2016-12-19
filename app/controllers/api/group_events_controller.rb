class Api::GroupEventsController < Api::BaseController
  expose(:group_events) { GroupEvent.actives }
  expose(:group_event)

  def index
    render json: GroupEventsDecorator.new(group_events).as_json, status: 200
  end

  def show
    render json: GroupEventDecorator.new(group_event).as_json, status: 200
  end
end
