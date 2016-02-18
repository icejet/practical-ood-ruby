class Character
  attr_reader :name, :hit_points, :attack_power, :equipped

  def initialize(name)
    @name = name
  end

  def assign_hp
    @hit_points = rand(50..75)
  end

  def assign_ap
    @attack_power = rand(1..5)
  end

  def equip
    items = ["Used band-aid", "Ogre's Toenail Clipping", "Slime cannon", "Toothbrush"]
    @equipped = items.sample
  end

  def attack
    puts "#{name} attacks with #{equipped} and hits for #{attack_power}"
  end
end

class Hero < Character
  def initialize(name)
    super(name)
  end

  def assign_hp
    @hit_points = rand(75..100)
  end

  def assign_ap
    @attack_power = rand(3..6)
  end

  def equip
    items = ["Pickaxe", "Creepy doll", "Pizza cutter", "Plunger"]
    @equipped = items.sample
  end
end
