require "spec_helper"
require "character"

describe Character do
  describe "#observe" do
    it "observes its environment" do
      subject.observe.should == <<-TEXT.unindent
        You can see a lightning bug.
        You can see a guttering candle.
        You hear a distant waterfall.
        You smell egg salad.
      TEXT
    end
  end

  describe "#drink(potion)" do
    it "tells the potion to affect the character" do
      potion = mock!.affect(subject).subject

      subject.drink(potion)
    end
  end

  context "with enchanted eyes" do
    before do
      enchantment = stub!.enchant_eyes { |eyes| stub!.look { "It's beautiful!\n#{eyes.look}How have you never seen them before?\n" } }.subject
      subject.enchant_eyes_with(enchantment)
    end

    describe "#observe" do
      it "observes its environment" do
        subject.observe.should == <<-TEXT.unindent
          It's beautiful!
          You can see a lightning bug.
          You can see a guttering candle.
          How have you never seen them before?
          You hear a distant waterfall.
          You smell egg salad.
        TEXT
      end
    end
  end
end
