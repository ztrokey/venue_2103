class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    @patrons.push(patron)
  end

  def yell_at_patrons
    @patrons.map { |patron| patron.upcase}
  end

  def over_capacity?
    if @patrons.length <= 4
      false
    else
      true
    end
  end
end
