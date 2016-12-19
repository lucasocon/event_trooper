class GroupEvent < ActiveRecord::Base
  validates :duration, numericality: { greater_than: 0 }
  validates :started_at, :duration, :name, :description, :location, presence: true, if: :published?

  scope :actives, -> { where(deleted: false) }

  def ended_at
    started_at + duration.days
  end

  def published?
    published
  end

  def get_state
    published? ? "Published" : "Draft"
  end
end
