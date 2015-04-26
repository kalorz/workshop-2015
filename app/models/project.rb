class Project < ActiveRecord::Base

  has_many :donations

  validates :title, :description, :goal, :deadline,
            presence: true

  validates :goal,
            numericality: {greater_than: 50}

  validate :deadline_is_in_the_future

  def short_description

    description.truncate(30, separator: ' ')

  end

  private

  def deadline_is_in_the_future
    errors.add(:deadline, 'must be in the future') if deadline && deadline < Time.current
  end




end
