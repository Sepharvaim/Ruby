def englishNumber numero

  if numero == 0
    return 'zero'
  end
    
    
    string = ''

  onesPlace = ['one',     'two',       'three',    'four',     'five',
             'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
             'sixty',   'seventy',   'eighty',   'ninety']

  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
             'sixteen', 'seventeen', 'eighteen', 'nineteen']

             
  left = numero


  write = left / 1000000000
  left = left - write * 1000000000
  
      if write > 0
           billion = englishNumber write
          string = string + billion + ' Billion '
      end

  write = left / 1000000
  left = left - write * 1000000
  
      if write > 0
           million = englishNumber write
          string = string + million + ' Million '
      end
# migliaia 
  write = left / 1000
  left = left - write * 1000
  
      if write > 0
           thousand = englishNumber write
          string = string + thousand + ' Thousand '
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
    else 
        string = string + tensPlace[write-1] +"-"+ onesPlace[left-1] 
    end
else 
    string = onesPlace[left-1]
    
end
end


puts 'Quante bottiglie vuoi lanciare?'
bottles = gets.chomp.to_i

while bottles.to_i > 0

if bottles.to_i >= 2
  puts "#{englishNumber(bottles)} bottles of beer on the wall, #{englishNumber(bottles)} bottles of beer.
  Take one down and pass it around, #{englishNumber(bottles-1)} bottles of beer on the wall."
  puts ' '
  bottles -= 1
else 
  puts "#{englishNumber(bottles)} bottle of beer on the wall, #{englishNumber(bottles)} bottle of beer.
  Take one down and pass it around, #{englishNumber(bottles-1)} bottles of beer on the wall."
  puts ' '
  bottles -= 1
end
end 

 puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."




