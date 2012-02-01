# DEPENDENCY!
require "infravision"

class InfravisionPotion
  def affect(character)
    character.enchant_eyes_with(Infravision.new)
  end
end
