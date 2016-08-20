class DiscagemFrase

  def initialize
    @resultado = ''
  end

  def disca(frase)
   frase.downcase!
   frase.gsub!(" ", "")
   frase.each_char do |char|
    if char =~ /a|b|c/
       @resultado << '2'
    elsif char =~ /d|e|f/
       @resultado << '3'
    elsif char =~ /g|h|i/
       @resultado << '4'
    elsif char =~ /j|k|l/
       @resultado << '5'
    elsif char =~ /m|n|o/
       @resultado << '6'
    elsif char =~ /p|q|r|s/
       @resultado << '7'
    elsif char =~ /t|u|v/
       @resultado << '8'
    elsif char =~ /w|x|y|z/
       @resultado << '9'
    elsif char == '-'
      @resultado << '-'
    elsif char =~ /[0-9#*]/
      @resultado << char
    else
      raise ArgumentError.new("fiiiii isso nao existe no teclado do telefone!!")
    end
   end
     @resultado
  end

end
