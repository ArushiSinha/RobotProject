require 'spec_helper'

describe 'robot' do
   let(:robot1){Robot.new(1, 3, "NORTH")}
 
 it 'should move' do
    expect(robot1.move).to eq([1, 4, "NORTH"])
  end


end