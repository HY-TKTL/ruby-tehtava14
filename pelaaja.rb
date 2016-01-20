class Pelaaja
 attr_accessor :pituus
 attr_reader :nimi

 def initialize(nimi, pituus)  
  @nimi = nimi
  @pituus = pituus
  @maalimaara = 0
 end

 def maaleja
  @maalimaara
 end

 def lisaa_maali
  @maalimaara = @maalimaara + 1
 end

 def to_s
  "#{@nimi} (#{@pituus} cm) maaleja #{@maalimaara}"
 end

end
