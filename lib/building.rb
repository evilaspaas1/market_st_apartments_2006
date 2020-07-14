class Building
  attr_reader :units

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    @renters = []
    @units.each do |unit|
      @renters << unit.renter.name
    end
    @renters
  end

  def average_rent
    average_rent = []
    @units.each do |unit|
      average_rent << unit.monthly_rent
    end
    (average_rent.sum).to_f / 2
  end
end
