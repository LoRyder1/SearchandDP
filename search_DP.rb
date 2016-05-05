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