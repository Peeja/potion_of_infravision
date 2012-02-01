require "spec_helper"
require "character"
require "infravision_potion"

describe "InfravisionPotion at work" do
  it do
    character = Character.new
    character.observe.should == <<-TEXT.unindent
      You can see a lightning bug.
      You can see a guttering candle.
      You hear a distant waterfall.
      You smell egg salad.
    TEXT

    character.drink(InfravisionPotion.new)
    character.observe.should == <<-TEXT.unindent
      You can see a lightning bug.
      You can see a guttering candle.
      You can see the ravenous bugblatter beast of traal.
      You hear a distant waterfall.
      You smell egg salad.
    TEXT
  end
end

