def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  array = []
  count = 0
  while count < src.count do
    count_B=0
    while count_B < src[count].count-1 do
      sentence_A = "I love #{src[count][count_B]} "
      count_B+=1
      sentence_B = "and #{src[count][count_B]} on my pizza"
      sentence_A+=sentence_B
      array.push<<sentence_A
    end
    count+=1
  end
  array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  array = []
  count = 0
  while count < src.length do
    count_B = 0
    while count_B < src[count].length-1 do
      if src[count][count_B] > src[count][src[count].length-1]
        array.push(src[count][count_B])
      else
        array.push(src[count][src[count].length-1])
      end
      count_B+=1
    end
    count+=1
  end
  array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  count = 0
  while count < src.length do
    count_B = 0
    while count_B < src[count].length-1 do
      if src[count][count_B]%2==0 && src[count][src[count].length-1]%2==0
        total += src[count][count_B]+src[count][src[count].length-1]
      end
      count_B+=1
    end
    count+=1
  end
  total
end
