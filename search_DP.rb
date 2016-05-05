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