class Project < ActiveRecord::Base

  validates :title, :description, :goal, :deadline,
            presence: true

  validates :goal,
            numericality: {greater_than: 50}

  validate :deadline_is_in_the_future

  private

  def deadline_is_in_the_future
    errors.add(:deadline, 'must be in the future') if deadline && deadline < Time.current
  end

end
