require 'spec_helper'
require './lib/human_player.rb'

describe HumanPlayer do
  let(:input) { StringIO.new(human_input) }
  let(:output) { StringIO.new }
  let(:player) { HumanPlayer.new("Player 1", "X", input: input, output: output) }

  describe "get_next_move" do
    let(:human_input) { "1\n" }

    it "asks for next move" do
      player.get_next_move
      expect(output.string).to include("Player 1, what is your next move?")
    end

    it "returns the entered move" do
      expect(player.get_next_move).to eq(1)
    end

    context "with invalid input" do
      let(:human_input) { "x\n1\n" }

      it "prints out an error message" do
        player.get_next_move
        expect(output.string).to include("That is an invalid grid spot")
      end

      it "asks for the move again" do
        player.get_next_move
        expect(output.string.scan("Player 1, what is your next move?").count).to eq(2)
      end

      it "returns the next valid entered move" do
        expect(player.get_next_move).to eq(1)
      end
    end
  end
end

