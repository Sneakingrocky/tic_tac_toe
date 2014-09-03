require 'spec_helper'
require './lib/gameboard.rb'

describe GameBoard do
  let(:gameboard) { GameBoard.new }
  let(:player) { HumanPlayer.new("Player 1", "X", input: input, output: output) }
 

  describe "at_location" do
    it "returns nil when location is empty" do
      expect(gameboard.at_location(1)).to eq(nil)
    end

    it "occupies space with players token" do
      gameboard.place_move(1, "X")
      expect(gameboard.at_location(1)).to eq("X")     
    end  
  end

  describe "board_to_s" do
    it "prints out gameboard" do
      expected_output = " 1 | 2 | 3 \n" +
                        "-----------\n" +
                        " 4 | 5 | 6 \n" +
                        "-----------\n" +
                        " 7 | 8 | 9 "
      expect(gameboard.board_to_s).to include(expected_output) 
    end

    context "player makes a move" do

      it "replaces number in grid with players token" do
        expected_output = " X | 2 | 3 \n" +
                          "-----------\n" +
                          " 4 | 5 | 6 \n" +
                          "-----------\n" +
                          " 7 | 8 | 9 "

        gameboard.place_move(1, "X")
        expect(gameboard.board_to_s).to include(expected_output)
      end  
    end
  end

  describe "three_in_a_row?" do
    GameBoard::WINNING_COMBOS.each do |combo|
      it "returns true when #{combo.join(', ')} is taken" do
        combo.each do |cell|
          gameboard.place_move(cell, "X")
        end
        expect(gameboard.three_in_a_row?).to eq(true)
      end
    end

    it "returns false when gameboard is empty" do
      expect(gameboard.three_in_a_row?).to eq(false)
    end  
  end
end  
