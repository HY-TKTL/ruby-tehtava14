
class Joukkue
  attr_accessor :nimi, :pelaajat

  def initialize(nimi)
    @nimi = nimi
    @pelaajat = []
  end

  def lisaa_pelaaja(pelaaja)
    @pelaajat.push(pelaaja)
  end

  def maaleja_yhteensa
    @pelaajat.inject(0) {|tulos, x| tulos + x.maaleja} || 0
  end

  def paras_maalintekija
    @pelaajat.max_by(&:maaleja)
  end

  def to_s
    "#{nimi}, pelaajia #{@pelaajat.count}, maaleja yhteensä #{maaleja_yhteensa}"
  end

end