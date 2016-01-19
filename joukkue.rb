require './pelaaja.rb'

class Joukkue
  attr_reader :nimi , :pelaajat

  def initialize(nimi)
    @nimi = nimi
    @pelaajat = []
  end

  def lisaa_pelaaja(pelaaja)
    @pelaajat.push(pelaaja)
  end

  def maaleja_yhteensa
    maalit = 0
    @pelaajat.each {|pelaaja| maalit += pelaaja.maaleja}
    maalit
  end

  def paras_maalintekija
    paras = @pelaajat.first
    @pelaajat.each do |pelaaja|
      if pelaaja.maaleja > paras.maaleja
        paras = pelaaja
      end
    end
    paras
  end

  def pelaajia_yhteensa
    @pelaajat.count
  end

  def to_s
    "#{nimi}, pelaajia #{pelaajia_yhteensa}, maaleja yhteensä #{maaleja_yhteensa}"
  end
end
