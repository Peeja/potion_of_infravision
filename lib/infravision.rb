# DEPENDENCY!
require "character"
require "delegate"

class Infravision
  def enchant_eyes(eyes)
    Eyes.new(eyes)
  end

  # DEPENDENCY!
  class Eyes < DelegateClass(Character::Eyes)
    def look
      super +
        <<-TEXT.unindent
          You can see the ravenous bugblatter beast of traal.
        TEXT
    end
  end
end
