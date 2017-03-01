class Dog
  attr_accessor :dogs_age_years

  def initialize(dogs_age_years)
    @dogs_age_years = dogs_age_years
  end

  def age
    return "#{dogs_age_years} years old, which is equal to #{dogs_age_months} months old and #{dogs_age_days} days"
  end

  def dogs_age_months
    dogs_age_years * 12
  end

  def dogs_age_days
    dogs_age_years * 365
  end
end

riley = Dog.new(1)
puts riley.age

roxy = Dog.new(2)
puts roxy.age
