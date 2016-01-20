require './pelaaja.rb'

class Joukkue

  def initialize(nimi)
    @nimi = nimi
    @pelaajat = []
  end

  def lisaa_pelaaja(pelaaja)
    @pelaajat << pelaaja
  end

  def maaleja_yhteensa
    maalit = 0
    @pelaajat.each do |i|
      maalit += i.maaleja
    end
    return maalit
  end

  def paras_maalintekija
    maalit = 0
    p = Pelaaja
    @pelaajat.each do |i|
      if i.maaleja > maalit
        maalit = i.maaleja
        p = i
      end
    end
    return p
  end

  def to_s
    "#{@nimi}, pelaajia #{@pelaajat.size}, maaleja yhteensä #{maaleja_yhteensa}"
  end
end