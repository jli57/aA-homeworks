def sum_to(n)
  return n if n <= 1
  n+sum_to(n-1)
end

def add_numbers(nums_array)
  return nil if nums_array.empty?
  return nums_array.first if nums_array.length == 1
  nums_array.last + add_numbers(nums_array[0...-1])
end

def gamma_fnc(n)
  return nil if n.zero?
  return 1 if n == 1
  (n-1)*gamma_fnc(n-1)
end

def ice_cream_shop(flavors, favorite)
  return true if flavors.last == favorite
  return false if flavors.empty?
  ice_cream_shop(flavors[0...-1], favorite)
end

def reverse(str)
  return str if str.empty? || str.length == 1
  str[-1] + reverse(str[0...-1])
end
