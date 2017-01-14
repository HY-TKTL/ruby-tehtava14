require './pelaaja.rb'

class Joukkue
  
  def initialize(nimi)
    @nimi = nimi
    @paras = nil
    @pelaajat = []
    @pelaajia = 0
  end

  def lisaa_pelaaja(pelaaja)
     @pelaajat[@pelaajia] = pelaaja
     @pelaajia += 1
   end	
   
  def maaleja_yhteensa
   return @pelaajat.inject(0){|tulos,y| tulos + y.maaleja}
  end

  def paras_maalintekija
   return @pelaajat.sort_by {|a| a.maaleja}.reverse[0]
  end

  def to_s
  return "#{@nimi}, pelaajia #{@pelaajia}, maaleja yhteensä #{maaleja_yhteensa}"
  end
end

