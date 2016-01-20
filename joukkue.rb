require './pelaaja.rb'

class Joukkue
  attr_accessor :nimi

  def initialize(nimi)
    @nimi = nimi
    @pelaajat = []
  end

  def lisaa_pelaaja(pelaaja)
    @pelaajat << pelaaja
  end

  def maaleja_yhteensa
    x = 0
    @pelaajat.each { |pelaaja| x += pelaaja.maaleja }
    return x
  end

  def paras_maalintekija
    @pelaajat.max_by(&:maaleja)
  end

  def to_s
    "#{@nimi}, pelaajia #{@pelaajat.length}, maaleja yhteensä #{self.maaleja_yhteensa}"
  end

end
