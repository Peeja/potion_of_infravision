require "spec_helper"
require "infravision"

describe Infravision do
  describe "enchanted eyes" do
    subject do
      eyes = stub!.look { "A unicorn approaches!\n" }.subject
      Infravision.new.enchant_eyes(eyes)
    end

    it "see the bugblatter beast of traal" do
      subject.look.should == <<-TEXT.unindent
        A unicorn approaches!
        You can see the ravenous bugblatter beast of traal.
      TEXT
    end
  end
end
