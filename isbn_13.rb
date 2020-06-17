#Controllo di un seriale ISBN 

def calcola_controllo(numero)
  # numero = "978-88-430-2534-"


  posizione = 0 
  somma = 0
  while numero[posizione] != nil
    if posizione % 2 == 0 
      somma += numero[posizione].to_i * 1
    else
      somma += numero[posizione].to_i * 3
    end
    posizione +=1
  end
  resto = somma % 10 
  somma /= somma / 10 * 10
  controllo = 10 - resto 
  return numero + controllo.to_s
end
def calcolo_validita(numero)
  numero = numero.gsub("-", "")
  numero_length = numero.length
  if numero_length < 13 
    numero = calcola_controllo(numero)
  end


  position = 0 
  somma = 0
  while numero[position] != nil
    if position % 2 == 0 
      somma += numero[position].to_i
    else 
      somma += numero[position].to_i * 3
    end
    position += 1
  end
  if somma % 10 == 0
    puts "Il codice ISBN e' valido!"
  else 
    puts "Il codice ISBN non e' valido!"
  end
end




calcolo_validita("978-1-59727-424-5")






 