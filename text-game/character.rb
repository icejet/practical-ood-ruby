class Character
  attr_reader :name, :hit_points, :attack_power, :equipped, :base_multiplier

  def initialize(name)
    @name = name
    @base_multiplier = 5
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

  def attack(target)
    damage = attack_power * base_multiplier + rand(1..5)
    puts "#{name} attacks with #{equipped}"
    target.take_damage(damage)
  end

  def take_damage(damage)
    @hit_points -= damage
    puts "#{name} is hit for #{damage}"
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
