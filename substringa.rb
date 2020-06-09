# definisci un metodo che prende una parola o frase la transforma in array
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(parola, dictionary)
    data_hash = Hash.new(0)
    parola = parola.downcase.split
    pp parola
    for word in dictionary do 
        for my_parola in parola do
            # if my_parola.include?(word) 

                data_hash[word] += 1 if my_parola.include?(word)
                # if data_hash.include?(word)
                #     data_hash[word] +=1
                # else
                #     data_hash[word] = 1
                # end
            # end
        end

    end
    pp data_hash
end
substrings("Howdy partner howdy, sit down! How's it going?", dictionary)

# controlla se ogni parola del dizionario e' presente nel testo 

# se presente viene aggiunto a un hash

# se non presente return 