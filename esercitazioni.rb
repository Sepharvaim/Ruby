require 'pp'
require 'pry'

# pp '5'.to_i
# pp 'g'.to_i


def QuestionsMarks(str) 
str_array = str.split("")

indexes = []
str_array.each_with_index do |character, index|
  if character.to_i > 0
    indexes << index
  else 
  end 
end
# [4,11,14,21]

count = 0
pp indexes.length
if indexes.length != 0 
  indexes.length/2.times do 
    
    # pp str[indexes[0+count]].to_i, str[indexes[1+count]].to_i
    if str[indexes[0+count]].to_i + str[indexes[1+count]].to_i == 10 
      
      #   #check if there are the dots 
      # binding.pry
      pp "passato il controllo della somma"
      if str.slice(indexes[0+count], (indexes[1+count]-indexes[0+count])) =~ (/(\w?)*\?(\w?)*\?(\w?)*\?(\w?)/)
        # pp str.slice(indexes[0+count], (indexes[1+count]-indexes[0+count]))
        pp 'passato il controllo dei punti int'
        count += 2
        return true
      else
        pp false
        return false 
      end
      
    else 
      pp false
      return false
    end

    if count / (indexes.length/2) == 0
      pp true
      return true
    else
    end
  end
  return true

else 
  pp false
  return false
end

end


QuestionsMarks("aaaaaaarrrrr??????")