arr_of_fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fish)
  biggest_fish = ""
  i = 0
  fish.each_with_index do |fish1, ind1|
    fish.each_with_index do |fish2, ind2|
      next if ind1 == ind2
      i += 1
      if fish1.length >= fish2.length
        biggest_fish = fish1
      else
        biggest_fish = fish2
      end
    end
  end
  biggest_fish
end

def dominant_octopus(fish)
  merge_sort(fish).pop
end

def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length/2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..-1])
  merge(left, right)
end

def merge(left, right)
  result = []
  if left[0] > right[0]
    result << left.shift
  else
    result << right.shift
  end
  result + left + right
end

def clever_octopus(fish)
  return nil if fish.empty?
  return fish.first if fish.length == 1

  biggest_fish = fish.first
  fish[1..-1].each do |f|
    biggest_fish = f if biggest_fish.length < f.length
  end
  biggest_fish
end

def slow_dance(target, tiles)
  tiles.each_with_index do |move, ind|
    return ind if move == target
  end
  -1
end

def fast_dance(target, tiles)
  tiles[target]
end
