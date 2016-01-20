class Joukkue
  attr_accessor :nimi # getterit ja setterit

  def initialize(nimi)
    @nimi = nimi
    @pelaajat = []
  end

  def lisaa_pelaaja(pelaaja)
    @pelaajat << pelaaja
  end

  def maaleja_yhteensa()
    sum = 0
    @pelaajat.each{|pelaaja| sum += pelaaja.maaleja}
    return sum
  end

  def paras_maalintekija()
    return @pelaajat.max_by(&:maaleja)
  end

  def to_s()
    return "#{nimi}, pelaajia #{@pelaajat.length}, maaleja yhteensä #{self.maaleja_yhteensa}"
  end
end
