require './bowling'

RSpec.describe Bowling, "@score" do
  context "with no stikes or spares" do
      it "sum the pin count for each roll" do
        bowling = Bowling.new
        20.times {bowling.roll(4)}
        expect(bowling.score()).to eq 80
      end
    end
end
