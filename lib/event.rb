

class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    (@ages.sum.to_f / @ages.length).round(2)
  end

  def standard_deviation_age
    sqr_age = @ages.map do |age|
      ((age - average_age) ** 2).round(2)
    end

    ave_sqr_age = sqr_age.sum.to_f / sqr_age.length

    Math.sqrt(ave_sqr_age).round(2)
  end
end
