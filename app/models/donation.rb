class Donation < ActiveRecord::Base

  belongs_to :project

  validates :amount,
            numericality: {greater_than: 0}

end
