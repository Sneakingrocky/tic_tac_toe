require 'spec_helper'
require './lib/gameboard.rb'

describe GameBoard do
  let(:gameboard) { GameBoard.new } 

  describe "at_location" do
    it "returns nil when location is empty" do
      expect(gameboard.at_location(1)).to eq(nil)
    end

    it "occupies space with players token" do
      gameboard.place_move(1, "X")
      expect(gameboard.at_location(1)).to eq("X")     
    end  
  end  
end  
