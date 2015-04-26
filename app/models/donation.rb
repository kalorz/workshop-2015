class Donation < ActiveRecord::Base

  belongs_to :project

  validates :amount,
            numericality: {greater_than: 0}

  def thanks_message
    if project && amount == project.goal
      'SHUT UP AND TAKE MY MONEY!'
    elsif amount <= 10
      'Every penny counts!'
    elsif amount <= 50
      'Aww... That is nice!'
    else
      '<3 <3 <3'
    end
  end

end
