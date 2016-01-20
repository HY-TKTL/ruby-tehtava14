
class Joukkue
 def initialize(nimi)
  @nimi = nimi
  @pelaajat = []
 end

 def lisaa_pelaaja(p)
  @pelaajat << p
 end

 def maaleja_yhteensa
  sum = 0
  @pelaajat.length.times do |i|
   sum = sum + @pelaajat.at(i).maaleja
  end
  sum
 end
 
 def paras_maalintekija
  p = @pelaajat.at(0)
  m = 0
  @pelaajat.length.times do |i|
   p = @pelaajat.at(i) and m = @pelaajat.at(i).maaleja if @pelaajat.at(i).maaleja > m
  end
  p	
 end

 def to_s
  "#{@nimi}, pelaajia #{@pelaajat.length}, maaleja yhteensa #{self.maaleja_yhteensa}"
 end
end
