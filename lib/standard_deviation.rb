AGES = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
def ages_sum
  count = 0

  AGES.each do |age|
    count += age
  end

  count
end

def length
  count = 0

  AGES.each do |age|
    count += 1
  end

  count
end

def average
  (ages_sum.to_f / length).round(2)
end

def subtract_each_num_by_avg
  AGES.map do |age|
   ( age - average).round(2)
  end
end

def sqr_subtract_each_num_by_avg
  subtract_each_num_by_avg.map do |num|
    (num ** 2).round(2)
  end
end

def sum_all_nums
  count = 0

  sqr_subtract_each_num_by_avg.each do |num|
    count += num
  end

  count.round(2)
end

def divide_by_sum_all_nums
  (sum_all_nums / length).round(2)
end

def sqrrt_quotient
  Math.sqrt(divide_by_sum_all_nums).round(2)
end


p ages_sum
p length
p average
p subtract_each_num_by_avg
p sqr_subtract_each_num_by_avg
p sum_all_nums
p divide_by_sum_all_nums
p sqrrt_quotient
# When you find the standard deviation, print it out
