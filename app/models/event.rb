class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User', foreign_key: :user_id, inverse_of: :organized_events

  validates :name, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validate :logical_dates?

  def logical_dates?
    if start_at.past?
      errors.add(:start_at, :in_past)
      return false
    end
    if start_at > end_at
      errors.add(:end_at, :invalid)
      return false
    end
  end
end
