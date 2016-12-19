require 'rails_helper'

RSpec.describe "GroupEvents", type: :request do
  let!(:group_event_1) { create(:group_event) }
  let!(:group_event_2) { create(:group_event) }

  describe "GET /group_events" do
    it "return group events" do
      get api_group_events_path

      expect(response.content_type).to eq("application/json")
      expect(response).to have_http_status(200)

      parse_json = JSON(response.body)
      expect(parse_json["group_events"]).to be_present
      expect(parse_json["group_events"].count).to be > 1
    end

    it "return group event" do
      id = GroupEvent.first.id

      get api_group_event_path(id)

      expect(response.content_type).to eq("application/json")
      expect(response).to have_http_status(200)

      parse_json = JSON(response.body)
      expect(parse_json["id"]).to eql(id)
    end
  end
end
