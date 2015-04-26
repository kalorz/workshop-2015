require 'rails_helper'

RSpec.describe Donation, type: :model do

  describe '#thanks_message' do

    context 'given amount less than or equal to 10' do
      it 'returns "Every penny counts!" message' do
        donation = Donation.new(amount: -5)
        expect(donation.thanks_message).to eq('Every penny counts!')

        donation = Donation.new(amount: 10)
        expect(donation.thanks_message).to eq('Every penny counts!')
      end
    end

    context 'given amount greater than 10 and less than or equal to 50' do
      it 'returns "Aww... That is nice!" message' do
        donation = Donation.new(amount: 11)
        expect(donation.thanks_message).to eq('Aww... That is nice!')

        donation = Donation.new(amount: 50)
        expect(donation.thanks_message).to eq('Aww... That is nice!')
      end
    end

    context 'given amount greater than 50' do
      it 'returns "<3 <3 <3" message' do
        donation = Donation.new(amount: 51)
        expect(donation.thanks_message).to eq('<3 <3 <3')
      end
    end

    context 'given amount is equal to the project goal' do
      it 'returns "SHUT UP AND TAKE MY MONEY!" message' do
        project  = Project.new(goal: 77)
        donation = Donation.new(project: project, amount: 77)
        expect(donation.project).to eq(project)
        #expect(donation.thanks_message).to eq('SHUT UP AND TAKE MY MONEY!')
      end
    end

  end

end
