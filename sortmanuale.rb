# preparation.rb 
require 'pry'
# puts 'Table of Contents'.center 40
# puts
# puts

# puts 'Chapter 1:  Numbers'.ljust(0) + 'page1'.rjust(50);

# puts 'Chapter 2:  Letters'.ljust(0) + 'page72'.rjust(50);

# puts 'Chapter 3:  Variables'.ljust(0) + 'page118'.rjust(48);


# said_bye = 0
# puts 'Ask something to your Grandma'


# while said_bye < 3
#     asking = gets.chomp
#         if  asking == "BYE"
#             puts 'DID YOU SAID HI?'
#             said_bye += 1;
#         else
#             if asking == asking.upcase 
#                 said_bye = 0
#                 puts "NO, NOT SINCE "+rand(1930..1950).to_s
#                 puts "Your Grandma is looking at you..."
#             else 
#                 said_bye = 0;
#                 puts "HUH! SPEAK UP, SONNY!"
#             end
#         end    
# end

# puts 'Dammi un anno di inizio'
# inizio_anno = gets.chomp.to_i
# puts 'E un anno di fine'
# fine_anno = gets.chomp.to_i



# while inizio_anno <= fine_anno

#     if inizio_anno % 400 == 0
#         puts inizio_anno.to_s + ' E\' un leap year';
        
#     else
#         if inizio_anno % 100 == 0 and inizio_anno % 4 == 0  
           
#         else 
#            if inizio_anno % 4 == 0
#             puts inizio_anno.to_s + ' E\' un leap year'
#            else
                
#            end  
#         end
#     end
#     inizio_anno += 1;
# end
    
puts 'Give me a list of words to sort'
word = ""
array = []

while word != "\n"
    word = gets
    array.push(word)
end
array=array[0...-1]  # the last index is a space so will be nil must be removed

#seconda parte del programma
swap = 0
i = 1

while swap < array.length do

array[0...-1].each do |x|    # we remove the last one that dont have to be paragone

     if x > array[i]
        temp = array[i-1]
        array[i-1] = array[i]
        array[i] = temp
        # i += i
        swap = 0
    else  
        i += 1 
        swap += 1
    end
    
end
i = 1
end
puts array;
# il problema con each e che anche se noi scambiamo due valori cmq each continua con 'limmagine che si era fatto dell'array quindi bisogna brekkare ogni volta che scambia due valori 
# a meno che non si trova un modo per far si che each prende larray cambiato forse con index..each