require './pelaaja.rb'

class Joukkue

  def initialize(nimi)
    @nimi = nimi
    @joukkue = []
  end

  def lisaa_pelaaja(pelaaja)
    @joukkue.push(pelaaja)
  end

  def maaleja_yhteensa()
    maaleja = 0
    @joukkue.each{ |p| maaleja += p.maaleja}
    maaleja
  end

  def paras_maalintekija()
    @joukkue.sort! { |a, b| b.maaleja <=> a.maaleja}[0]
  end

  def to_s()
    "#{@nimi}, pelaajia #{@joukkue.length}, maaleja yhteensä #{maaleja_yhteensa}"
  end
end
