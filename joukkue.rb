require './pelaaja.rb'

class Joukkue
  attr_reader :nimi

  def initialize(nimi)
    @nimi = nimi
    @pelaajat = []
  end

  def lisaa_pelaaja(pelaaja)
    @pelaajat.insert(0, pelaaja)
  end

  def maaleja_yhteensa
    @pelaajat.inject(0){ |tulos, x| tulos + x.maaleja}
  end

  def paras_maalintekija
    paras = @pelaajat[0]
    @pelaajat.each do |pelaaja|
      if pelaaja.maaleja > paras.maaleja
        paras = pelaaja
      end
    end
    paras
  end

  def to_s
    "#{@nimi}, pelaajia #{@pelaajat.length}, maaleja yhteensä #{maaleja_yhteensa}"
  end
end