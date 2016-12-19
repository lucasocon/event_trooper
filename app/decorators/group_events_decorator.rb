class GroupEventsDecorator
  attr_accessor :group_events

  def initialize(group_events)
    @group_events = group_events
  end

  def as_json
    {
      group_events: build_group_events
    }
  end

  def build_group_events
    group_events.each.inject([]) do |rtn, group_event|
      rtn << GroupEventDecorator.new(group_event).as_json()
    end
  end
end