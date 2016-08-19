class DiscagemFrase

  def initialize
    @@resultado = ''
  end

  def disca(frase)

     frase.each_char do |char|
        if  char =~ /a|b|c/
          @@resultado = 2
        end
     end
     @@resultado
  end

end
