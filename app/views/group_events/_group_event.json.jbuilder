json.extract! group_event, :id, :started_at, :duration, :name, :description, :location, :published, :created_at, :updated_at
json.url group_event_url(group_event, format: :json)