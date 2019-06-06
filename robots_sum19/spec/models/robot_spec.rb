require 'rails_helper'

RSpec.describe Robot, type: :model do
  
  describe 'info' do
    it 'greets human if friendly' do
      # robot = Robot.create(name: 'bob', serial: '13', friendly: true)
      # expect(robot.greets).to eq('Hello')
      expect(FactoryBot.create(:robot).greets).to eq('Hello')
    end

    it 'Attack human if not friendly' do
      # robot = Robot.create(name: 'bob', serial: '13', friendly: false)
      # expect(robot.attack).to eq(true)
      expect(FactoryBot.create(:robot, friendly: false).attack).to eq(true)
    end
  end

  describe 'inventor' do
    expect(FactoryBot.attributes_for(FactoryBot.create(:robot)).inventor_id).to eq(1)
  end
end
