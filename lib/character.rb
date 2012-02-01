class Character
  def initialize
    @eyes = Eyes.new
  end

  def observe
    look +
      <<-TEXT.unindent
        You hear a distant waterfall.
        You smell egg salad.
      TEXT
  end

  def look
    @eyes.look
  end

  def drink(potion)
    potion.affect(self)
  end

  def enchant_eyes_with(enchantment)
    @eyes = enchantment.enchant_eyes(@eyes)
  end

  class Eyes
    def look
      <<-TEXT.unindent
        You can see a lightning bug.
        You can see a guttering candle.
      TEXT
    end
  end
end
