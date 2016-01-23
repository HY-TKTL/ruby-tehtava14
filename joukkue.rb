require './pelaaja.rb'

class Joukkue
  attr_reader :pelaajat, :nimi

  def initialize nimi
    @nimi = nimi
    @pelaajat = []
  end

  def lisaa_pelaaja pelaaja
    pelaajat.push(pelaaja)
  end

  def maaleja_yhteensa
    pelaajat.inject(0) { |tulos, pelaaja| tulos + pelaaja.maaleja }
  end

  def paras_maalintekija
    pelaajat.max_by { |pelaaja| pelaaja.maaleja }
  end

  def to_s
    "#{nimi}, pelaajia #{pelaajat.length}, maaleja yhteensä #{self.maaleja_yhteensa}"
  end
end