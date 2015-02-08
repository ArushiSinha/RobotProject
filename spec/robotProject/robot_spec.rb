require 'spec_helper'

describe 'robot' do
   let(:robot1){Robot.new(1, 3, "NORTH")}
 
 it 'should move' do
    expect(robot1.move).to eq([1, 4, "NORTH"])
  end


  it 'should turn left' do
  expect(robot1.left).to eq([1, 3, "WEST"])
  end

  it 'should turn right' do
    expect(robot1.right).to eq([1, 3, "EAST"])
  end


end