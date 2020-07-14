class Building
  attr_reader :units,
              :renters

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
  end

  def add_renter(renter)
    @renters << renter.name
  end

  def average_rent
    average_rent = []
    @units.each do |unit|
      average_rent << unit.monthly_rent
    end
    (average_rent.sum).to_f / 2
  end
end
