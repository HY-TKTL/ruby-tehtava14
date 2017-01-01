class Joukkue
  attr_reader :nimi
  attr_accessor :joukkue

  def initialize(nimi)
    @nimi = nimi
    @joukkue = []
  end

  def lisaa_pelaaja(pelaaja)
    @joukkue << pelaaja
  end

  def maaleja_yhteensa
    @joukkue.inject(0) {|sum, element| sum + element.maaleja }
  end

  def paras_maalintekija
    @joukkue.max {|element| element.maaleja}
  end

  def to_s
    "#{nimi}, pelaajia #{joukkue.size}, maaleja yhteensä #{maaleja_yhteensa}"
  end

end
