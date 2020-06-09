class Ciao 
  def initialize  
    @@stringa = "ciao"
  end

  def method(we)
    @@stringa +=  we
    return @@stringa
  end
end


una_classe = Ciao.new
una_classe.method('we')
puts una_classe.method('ariciao')