require 'rails_helper'

RSpec.describe Project, type: :model do

  describe '#short_description' do

    context 'given description longer than 30 characters' do
      it 'truncates the description to 30 characters including ellipsis' do
        project = Project.new(description: 'This is my very long description for my project')

        expect(project.short_description).to eq('This is my very long descri...')
      end
    end

    context 'given description with no more than 30 characters' do
      it 'returns the whole description' do
        project = Project.new(description: 'Some short description')

        expect(project.short_description).to eq('Some short description')
      end
    end

  end

end
