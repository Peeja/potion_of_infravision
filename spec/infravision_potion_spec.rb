require "spec_helper"
require "infravision_potion"

describe InfravisionPotion do
  describe "#affect(character)" do
    it "tells the potion to affect the character" do
      # DEPENDENCY!
      infravision = Object.new
      stub(Infravision).new { infravision }

      character = mock!.enchant_eyes_with(infravision).subject

      subject.affect(character)
    end
  end
end
