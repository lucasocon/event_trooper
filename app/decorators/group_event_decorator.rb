class GroupEventDecorator
  attr_accessor :group_event

  def initialize(group_event)
    @group_event = group_event
  end

  def as_json
    {
      id: group_event.id,
      started_at: group_event.started_at,
      duration: group_event.duration,
      name: group_event.name,
      description: group_event.description,
      location: group_event.location,
      published: group_event.published
    }
  end
end
