def rob(nums)
    return 0 if nums.empty?
    return nums[0] if nums.length == 1
  
    # Helper method to calculate the maximum amount using dynamic programming
    def rob_helper(nums)
      prev_max = 0
      curr_max = 0
  
      for i in 0...nums.length
        temp = curr_max
        curr_max = [prev_max + nums[i], curr_max].max
        prev_max = temp
      end
  
      return curr_max
    end
  
    # Calculate the maximum amount when the first house is robbed and the last house is not
    max1 = rob_helper(nums[0...nums.length - 1])
  
    # Calculate the maximum amount when the first house is not robbed and the last house is
    max2 = rob_helper(nums[1..-1])
  
    # Return the maximum amount between the two scenarios
    return [max1, max2].max
  end
  