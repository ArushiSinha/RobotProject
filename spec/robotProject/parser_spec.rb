require 'spec_helper'

describe 'parser' do
   let(:parser1){Parser.new}
   let(:parser2){Parser.new}
   

  it 'should parse position' do
    expect(parser1.parse_position("1 2 NORTH")).to eq([1, 2, "NORTH"])
  end

  it 'should parse commands' do
    expect(parser2.parse_command("MOVE RIGHT MOVE LEFT")).to eq([1, -1, "EAST"])
  end

end