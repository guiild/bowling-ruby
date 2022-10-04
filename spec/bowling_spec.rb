require './bowling'

RSpec.describe Bowling, "@score" do
  context "with no stikes or spares" do
      it "sum the pin count for each roll" do
        bowling = Bowling.new
        20.times {bowling.roll(4)}
        expect(bowling.score()).to eq 80
      end
    end

    context "with spares" do
      it "sum the pin count for each roll" do
        bowling = Bowling.new
        10.times do
          bowling.roll(4)
          bowling.roll(6)
        end

        expect(bowling.score()).to eq 195
      end
    end

    context "with strikes" do
      it "sum the pin count for each roll" do
        bowling = Bowling.new
        10.times do
          bowling.roll(10)
        end

        expect(bowling.score()).to eq 300
      end
    end
end
