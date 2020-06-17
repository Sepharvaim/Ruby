require "./colors.rb"

libri = %w(nulla, genesi, esodo, levitico, numeri, deuteronomio, giosue, giudici, rut, samuele, 1 e 2re, 1 e 2cronache, esdra, neemia, ester, giobbe, salmi, proverbi, ecclesiaste, cantico dei cantici, isaia, geremia, lamentazioni, ezechiele, daniele, osea, gioele, amos, abdia, giona, michea, naum, abacuc, sofonia, aggeo, zaccaria, malachia, matteo, marco ,luca, giovanni, atti, romani, corinti, galati, efesini, filippesi, colossesi, tessalonicesi, timoteo, tito, filemone, ebrei, giacomo, 1pietro, 2pietro, giovanni(lettere), giuda, rivelazione)

libri = libri.join().gsub(/,/, " ").split(" ")
# libri = libri_senza_virgola.split(" ")


# profeti = libri[20,17].map { |x|  x.magenta }

# libri = libri - libri[20,17]
# libri = libri.insert(20,profeti).flatten

# prendere tutto larray tranne il primo elemento



senza_primo = libri[1..-1]

loop do 

sample = senza_primo.sample
  puts "Cosa viene prima di #{sample}?".center(50).underline.bold.italic
  risposta = gets.chomp
  index_di_risposta = libri.index(sample)
  if risposta == libri[index_di_risposta-1]
    puts "Bravo! ".center(100).green, "\n"
  elsif risposta == "exit"
    puts "Ciao torna presto".center(50)
  else
    puts "No! Ritenta era #{libri[index_di_risposta-1]}".center(50).red
    puts
  end
  break if risposta == "exit"
end


