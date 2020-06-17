# controlla le row a poi le colum per vedere se si possono mettere dei numeri 
# se no metti dove puo essere il numero nella casellamancante ma non piu di 2 numerini

# se rimangono  lieee di 4 posti mancanti calcola quali sono e vedi se e possibile aggiungere numerini 





3.downto(-3).each do |x|
  # puts x.abs
  puts "#"*(4-x.abs)
end

# i = 5

# while i >= 1 do
#   print "#"*(i)
  
#   i -= 1
#   puts " "
# end

# 5.downto(1) { |x| puts"#"*x }

# i = 5
# 5.downto(1) do |x|
#   i.times do |k|
#     print "#"  
#   end
#   i -= 1
#   # print "#"*(x)
#   puts " "
# end