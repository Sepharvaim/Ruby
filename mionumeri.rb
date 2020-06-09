def englishNumber numero


  if numero == 0
    return 'zero'
  end

    string = ''

    onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
    tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']

    bigNumbers = ['hundred', 'million', 'billion', 'trillion', 'quadrillion', 'quintillion' , 'sextillion']

    teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

               
    left = numero
    


     
    write = left / 1000000000
    left = left - write * 1000000000
    
        if write > 0
             million = englishNumber write
            string = string + million + '-Million '
        end




    write = left / 1000000
    left = left - write * 1000000
    
        if write > 0
             million = englishNumber write
            string = string + million + '-Million '
        end






    write = left / 1000
    left = left - write * 1000
    
        if write > 0
             thousand = englishNumber write
            string = string + thousand + '-Thousand '
        end
    
    write = left / 100
        left = left - write * 100


         if write > 0
             string = string + onesPlace[write-1] +"-"+'hundred '
         end


    write = left / 10 
    left = left - write * 10



        if write > 0
            
            if write == 1
            string = string + teenagers[left-1]
            elsif write > 1 && left == 0

                string = string +" and "+ tensPlace[write-1]
            else 
                string = string + tensPlace[write-1] +"-"+ onesPlace[left-1]     
            end
        else 
            string = onesPlace[left-1]
            
        end
    
    
end


puts englishNumber(9);
puts englishNumber(5);
puts englishNumber(23)
puts englishNumber(10)
puts englishNumber(15)
puts englishNumber(99)
puts englishNumber(100)
puts englishNumber(199)
puts englishNumber(997)
puts englishNumber(1000)
puts englishNumber(1259)
puts englishNumber(12321)
puts englishNumber(999999)
puts englishNumber(7512333)
puts englishNumber(777512333)
puts englishNumber(8777512333)
puts englishNumber(888777512333)




puts englishNumber(3325)
puts englishNumber(3326)
puts englishNumber(3327)
puts englishNumber(3328)
puts englishNumber(3329)
puts englishNumber(3330)

