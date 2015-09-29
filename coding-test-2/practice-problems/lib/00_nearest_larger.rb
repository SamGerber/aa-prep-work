# The function, `nearest_larger(arr, i)` takes an array and an
# index.  The function then returns another index, `j`: satisfying:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), the earliest (left-most)
# of the two indices will be returned. If no number in `arr` is 
# larger than `arr[i]` return will be `nil`.
#
#
# Author::    Sam Gerber  (mailto:gerbyxvi@gmail.com)
# Copyright:: Copyright (c) 2015
# License::   Distributes under the same terms as Ruby


def nearest_larger(arr, idx)
  return nil if arr.count < 2 || idx > arr.count - 1 || idx < 0
  
  distance = 1
  
  while idx - distance >= 0 || idx + distance < arr.count
  
    if idx - distance >= 0
      return idx - distance if arr[idx-distance] > arr[idx]
    end
    
    if idx + distance < arr.count
      return idx + distance if arr[idx+distance] > arr[idx]
    end

    distance += 1
  end
  
  nil
end
