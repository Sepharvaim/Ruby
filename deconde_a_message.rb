
message = "18,12312,171,763,98423,1208,216,11,500,18,241,0,32,20620,27,10"
uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
lowercase = "abcdefghijklmnopqrstuvwxyz"
converted_number = ""
up = "UPPERCASE"
lo = "LOWERCASE"
pu = "PUNCTUATION"
mode = up


position = 0
while message[position] != nil 
  number = "" 
  while message[position] != "," && message[position] != nil
    number = number.to_s
    number << message[position]
    position += 1

  end
  number =  number.to_i
  puts number

  
 # 18 il numero ma string 
  
  
  
  case mode 
  when "UPPERCASE"
    number = number % 27
    if number == 0
      mode = lo  
    else
      converted_number << uppercase[number-1]
    end
    
    
  when "LOWERCASE"
    number = number % 27 
    if number == 0
      mode = pu
    else  
      converted_number << lowercase[number-1]
    end
    
    
  when "PUNCTUATION"
    number = number % 9
    if number == 0 
      mode = up   
    else 
    case number 
    when 1 then converted_number += "!"
    when 2 then converted_number += "?"
    when 3 then converted_number += ","
    when 4 then converted_number += "."
    when 5 then converted_number += " "
    when 6 then converted_number += ";"
    when 7 then converted_number += '"'
    when 8 then converted_number += "\'"
    end
    end

  end
  p converted_number
  position += 1
end