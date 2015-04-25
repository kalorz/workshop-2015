class Project < ActiveRecord::Base

  validates :title, presence: true

  validates :goal, numericality: {greater_than: 50}

end
