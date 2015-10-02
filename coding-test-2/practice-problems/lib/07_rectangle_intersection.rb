def rec_intersection(rect1, rect2)
  intersection_lower_left = []
  intersection_upper_right = []
  # Return nil if they don't overlap
  
  if rect1[0][0] > rect2[1][0] || rect2[0][0] > rect1[1][0] ||
     rect1[0][1] > rect2[1][1] || rect2[0][1] > rect1[1][1]
     
    return nil
  end

  # Largest x coord of lower left is intersection lower left x
  intersection_lower_left[0] = rect1[0][0] > rect2[0][0] ? rect1[0][0] : rect2[0][0]

  # Largest y coord of lower left is intersection lower left y
  intersection_lower_left[1] = rect1[0][1] > rect2[0][1] ? rect1[0][1] : rect2[0][1]

  # Smallest x coord of upper right is intersection upper right x
  intersection_upper_right[0] = rect1[1][0] < rect2[1][0] ? rect1[1][0] : rect2[1][0] 
  
  # Smallest y coord of upper right is intersection upper right y
  intersection_upper_right[1] = rect1[1][1] < rect2[1][1] ? rect1[1][1] : rect2[1][1] 

  [intersection_lower_left, intersection_upper_right]
end
