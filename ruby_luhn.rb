puts "Dammi il numeor da validare 6"
digit = gets.chomp


def double_number(digit)
  double_digit = digit * 2
  if double_digit >= 10
    sum = 1 + double_digit % 10
    
     sum
  else 
     double_digit
  end
end

#somma singola per carattere  ora ce da fare somma con un loop 
def check(digit)
  even_length_sum = 0
  odd_length_sum = 0
  position = 0
  while digit[position] != nil
  
    if position % 2 == 0
     p even_length_sum += digit[position].to_i
     p odd_length_sum += double_number(digit[position].to_i)
    else 
     p even_length_sum += double_number(digit[position].to_i)
     p odd_length_sum += digit[position].to_i
    end 
  position += 1
end
sum = 0 
if (position) % 2 == 0 
  #il numeor e' paro 
  # quindi 
  sum = odd_length_sum
else 
  sum = even_length_sum
end
if sum % 10 == 0
  puts "#{sum} e' divisibile by 10. Valid!"
  sum
else 
  puts "#{sum} non e' divisibile da 10. Invalid!"
  sum
end
end
p check(digit)
