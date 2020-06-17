def every_base_to_another(insert, base_in, base_out)

  begin 
    number = insert.upcase! || insert 
  rescue
    number = insert.to_s
  else
    number = insert.upcase! || insert
  end

  base = base_in 
  position = 0
  exponent = number.length-1
  sum = 0
  while number[position] != nil
   case number[position] 
   when "A" then sum += 10 * base**exponent
   when "B" then sum += 11 * base**exponent
   when "C" then sum += 12 * base**exponent
   when "D" then sum += 13 * base**exponent
   when "E" then sum += 14 * base**exponent
   when "F" then sum += 15 * base**exponent
   else
     sum += number[position].to_i * (base**exponent)
   end
   exponent -= 1
   position += 1
  end
  sum
  def decimal_to_every_base(insert,base_out)
    number = insert
    sum = ""
    while number != 0
      case (number % base_out) 
      when 10 then sum << 'A'
      when 11 then sum << 'B'
      when 12 then sum << 'C'
      when 13 then sum << 'D'
      when 14 then sum << 'E'
      when 15 then sum << 'F'
      else
        sum << (number % base_out).to_s
      end
      number = number / base_out
    end
    puts sum = sum.reverse
  end
  decimal_to_every_base(sum,base_out)
end

every_base_to_another(123,10,2)