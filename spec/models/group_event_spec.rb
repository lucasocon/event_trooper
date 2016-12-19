require 'rails_helper'

RSpec.describe GroupEvent, type: :model do
  let!(:group_event) { create(:group_event) }

  describe "Validations" do
    it 'should validate presence if published' do
      record = GroupEvent.new(published: true)
      record.valid? # run validations

      expect(record.errors[:name]).to include("can't be blank") # check for presence of error
      expect(record.errors[:started_at]).to include("can't be blank")
      expect(record.errors[:duration]).to include("can't be blank")
      expect(record.errors[:name]).to include("can't be blank")
      expect(record.errors[:description]).to include("can't be blank")
      expect(record.errors[:location]).to include("can't be blank")

      record.name = 'example' # valid state
      record.started_at = Date.new
      record.duration = 1
      record.description = "Example description"
      record.location =" Argentina"
      record.valid? # run validations

      expect(record.errors[:name]).not_to include("can't be blank") # check for presence of error
      expect(record.errors[:started_at]).not_to include("can't be blank")
      expect(record.errors[:duration]).not_to include("can't be blank")
      expect(record.errors[:name]).not_to include("can't be blank")
      expect(record.errors[:description]).not_to include("can't be blank")
      expect(record.errors[:location]).not_to include("can't be blank")
    end
  end

  describe "Factory" do
    it "creates a valid group event" do
      expect(group_event).to be_valid
    end
  end
end
