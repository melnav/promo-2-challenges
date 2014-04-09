def sum_with_while(min,max)
  i = sum = min
  while i < max do
    i = i + 1
    sum = sum + i
  end
  sum
end

def sum_with_for(min,max)
  sum = 0
  for i in min..max do
    sum += i
  end
  sum
end

# The trick is to see that:
# 1 + 2 + 3 + 4 + 5 = 1 + (2 + 3 + 4 + 5) = 1 + (2 + [3 + 4 + 5])
def sum_recursive(min,max)
  if min > max
    raise ArgumentError.new "min > max"
  end

  if min == max
    max
  else
    min + sum_recursive(min + 1, max)
  end
end