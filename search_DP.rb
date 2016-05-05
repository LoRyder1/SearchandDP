# In Insertion Sort Part 1, you sorted one element into an array. Using the same approach repeatedly, can you sort an entire unsorted array?

# Guideline: You already can place an element into a sorted array. How can you use that code to build up a sorted array, one element at a time? Note that in the first step, when you consider an element with just the first element - that is already "sorted" since there's nothing to its left that is smaller.

# In this challenge, don't print every time you move an element. Instead, print the array after each iteration of the insertion-sort, i.e., whenever the next element is placed at its correct position.

# Since the array composed of just the first element is already "sorted", begin printing from the second element and on.

# Time complexity O(n^2)

def insertionSort(ar)
  for i in 1..(ar.size-1)   
    cur_el = ar[i]
    j = i -1
    while j >= 0 and ar[j] > cur_el
      ar[j+1] = ar[j]
      j = j -1
    end
    ar[j+1] = cur_el
    puts ar.join(' ')
  end
end

# insertionSort [1,4,3,5,6,2]

# Watson gives Sherlock an array AA of length NN. Then he asks him to determine if there exists an element in the array such that the sum of the elements on its left is equal to the sum of the elements on its right. If there are no elements to the left/right, then the sum is considered to be zero. 
# Formally, find an ii, such that, AA1+A+A2...A...Ai-1 =A=Ai+1+A+Ai+2...A...AN.

def sherlock_array arr
  left_i = 0
  right_i = arr.size-1
  
  left = arr[left_i]
  right = arr[right_i]
  
  while left_i != right_i
    if left < right
      left_i += 1
      left += arr[left_i]
    else
      right_i -= 1
      right += arr[right_i]
    end 
  end
  
  puts left == right ? 'YES' : 'NO'
end

# sherlock_array [1,2,3]
# sherlock_array [1,2,3,3]

# Sunny and Johnny together have MM dollars they want to spend on ice cream. The parlor offers NN flavors, and they want to choose two flavors so that they end up spending the whole amount.

# You are given the cost of these flavors. The cost of the iithth flavor is denoted by ccii. You have to display the indices of the two flavors whose sum is MM.


def ice_cream_parlor num, arr
  for i in (0...arr.size) do
    for j in (i+1...arr.size) do
      if arr[i] + arr[j] == num
        puts "#{i+1} #{j+1}"
        break; break;
      end
    end
  end
end

# ice_cream_parlor 4, [1,4,5,3,2]
# ice_cream_parlor 4, [2,2,4,3]

# Time complexity O(N) using Kadane's algorithm 

# Because of the way this algorithm uses optimal substructures (the maximum subarray ending at each position is calculated in a simple way from a related but smaller and overlapping subproblem: the maximum subarray ending at the previous position) this algorithm can be viewed as a simple example of dynamic programming.

# Kadane's algorithm consists of a scan through the array values, computing at each position the maximum (positive sum) subarray ending at that position. This subarray is either empty (in which case its sum is zero) or consists of one more element than the maximum subarray ending at the previous position. The algorithm only needs to keep track of the ending position because the implied starting position is just after the last position the sum went negative, and you can always get a higher sum by dropping any negative-sum prefix. 
# Kadane's Algo - look at each index and figure out max sum subarray ending at this index. 

# def the_max_subarray arr
#   max_ending_here = max_so_far = arr.shift
#   arr.each do |x|
#     max_ending_here = [x, max_ending_here + x].max
#     max_so_far = [max_so_far, max_ending_here].max
#   end
#   p max_so_far
# end

def the_max_subarray arr
  
end

the_max_subarray [-4,5,5,-7,4,-1,8,-6]  # 14
# the_max_subarray [-1,-2,-3,-4,-5, -6]  # -1
# the_max_subarray [1] # 1
# the_max_subarray [1,2,3,4] # 10
# the_max_subarray [2,-1,2,3,4,-5] # 10
# the_max_subarray [31, -41, 59, 26, -53, 58, 97, -93, -23, 84] # 187 


# Maximum Sum Subarray 
# - Brute Force - Time Complexity O(N^2)
# - Kadane's Algo = Time Complexity O(N^2) - divide and conquer method
#  -- but can do much better with Kadane! - can run at linear time O(N)
# - local max subarray is either the current element or current element combined with the previous subarray
# - use this method for every element except for first element

# When I ask these kinds of question, the answer isn't necessarily the goal. The goal is to see how they break down a problem. The main thing I personally look for is:
# 1) identify a brute strength algorithm
# 2) identify that #1 is a brute strength approach
# 3) can they identify any parameters which can limit the problem's scope
# 4) can they improve their #1
# For #3 in this problem the limiting parameter is that the empty set will have a sum of 0 and thus is the case to beat.
# On a related note my personal favorite questions are similar to what you suggest. I just want to state that there is value to these questions. Maybe it isn't the best way all the time and it can be misused, but it isn't useless.


