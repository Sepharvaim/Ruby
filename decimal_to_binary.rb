
def decimal_to_binary(insrt)
  number = insrt  
  binary = ""
  while number != 0
    binary += (number % 2 ).to_s
    number = number / 2 
  end
  binary = binary.reverse
  # puts "Il numero #{insrt} in binary e' #{binary}"
  binary
end
def binary_to_decimal(code)
  sum = 0
  code = code.to_s#lo trasforma in base 8 se ce lo zero 
  exponent = code.length-1
  position = 0 
  while code[position] != nil
    if code[position] == "1"
      sum = sum + (code[position].to_i * 2) ** (exponent)
      exponent -= 1
      position += 1
    else 
      exponent -= 1
      position += 1
    end
  end
  # puts "Il numero binario inserito in decimal e' #{sum}"
  sum
end
def decimal_to_hexa(insert)
  number = insert
  hexa = ""
  while number != 0
    case (number % 16) 
    when 10 then hexa << 'A'
    when 11 then hexa << 'B'
    when 12 then hexa << 'C'
    when 13 then hexa << 'D'
    when 14 then hexa << 'E'
    when 15 then hexa << 'F'
    else
      hexa << (number % 16).to_s
    end
    number = number / 16  
  end
  hexa = hexa.reverse
  
  # puts "Il numero decimale #{insert} in hexadecimal is #{hexa}"
end
def hexa_to_decimal(insert)
  number = insert.upcase! || insert
  position = 0
  exponent = number.length-1
  sum = 0
  while number[position] != nil
   case number[position] 
   when "A" then sum += 10 * 16**exponent
   when "B" then sum += 11 * 16**exponent
   when "C" then sum += 12 * 16**exponent
   when "D" then sum += 13 * 16**exponent
   when "E" then sum += 14 * 16**exponent
   when "F" then sum += 15 * 16**exponent
   else
     sum += number[position].to_i * (16**exponent)
   end
   exponent -= 1
   position += 1
  end
  sum
end

def binary_decimal_hexa(number, base)
  if base == 2
    puts "Il numero #{number} in base #{base} diventa #{binary_to_decimal(number)} in base 10, #{decimal_to_hexa(binary_to_decimal(number))} in base 16"
  elsif base == 10
    puts "Il numero #{number} in base #{base} diventa #{decimal_to_binary(number)} in base 2, #{decimal_to_hexa(number)} in base 16"
  elsif base == 16
    puts "Il numero #{number} in base #{base} diventa #{hexa_to_decimal(number)} in base 10, #{decimal_to_binary(hexa_to_decimal(number))} in base 2"
  else 
    puts "You need to specify a base 2, 10 or 16!"
  end

end



binary_decimal_hexa("5f5",16)