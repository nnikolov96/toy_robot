require 'spec_helper'

RSpec.describe ToyRobot::Simulator do
  let(:table) { ToyRobot::Table.new(5, 5) }
  subject { ToyRobot::Simulator.new(table) }
  it 'places the robot onto a valid position' do
    expect(ToyRobot::Robot).to receive(:new)
      .with(0, 0, 'NORTH')
      .and_return(double)
    subject.place(0, 0, 'NORTH')
    expect(subject.robot).to_not be_nil  
  end

  it 'cannot place the robot onto an invalid position' do
    expect(ToyRobot::Robot).to_not receive(:new)
    subject.place(5, 5, 'NORTH')
    expect(subject.robot).to be_nil
  end
end