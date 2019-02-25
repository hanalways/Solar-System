# Solar System
# REMEMBER: table gem is useful here!

# Load Planet into pry:
require "pry"
require "terminal-table"

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sum_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def name
    return @name
  end

  def color
    return @color
  end

  def mass_kg
    pretty_mass = @mass_kg.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    return pretty_mass
  end

  def distance_from_sun
    pretty_distance = @distance_from_sum_km.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    return pretty_distance
  end

  def fun_fact
    return @fun_fact
  end

  def summary
    table = Terminal::Table.new do |t|
      t << ["Name:", @name]
      t << :separator
      t << ["Color:", @color]
      t << :separator
      t << ["Mass:\n(kilograms)", mass_kg]
      t << :separator
      t << ["Distance from the sun:\n(kilometers)", distance_from_sun] # not working
      t << :separator
      t << ["Fun Fact:", @fun_fact]
    end

    return table
  end
end
