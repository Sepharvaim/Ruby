require 'pp'
def bubble_sort(a)

  loop do 
    swapped = false
    for n in 0..a.length-2
      if  a[0+n] > a[1+n] # swap 
        a[0+n], a[1+n] = a[1+n], a[0+n] 
        swapped = true 
      end
    end
    break if swapped == false
  end
a
end

pp bubble_sort([4,3,78,18,-5,800,12,2,0,2])

pp [4,3,78,18,-5,800,12,2,0,2].sort 


