class Joukkue
  def initialize(nimi)
    @nimi = nimi
    @pelaajat = Array.new
  end

  def lisaa_pelaaja(pelaaja)
    @pelaajat.push(pelaaja)
  end

  def maaleja_yhteensa
    maalit = 0
    @pelaajat.each do |pelaaja|
      maalit += pelaaja.maaleja
    end
    maalit
  end

  def paras_maalintekija
    paras = @pelaajat.first
    @pelaajat.each do |pelaaja|
      paras = pelaaja if pelaaja.maaleja > paras.maaleja
    end
    paras
  end

  def to_s
    "#{@nimi}, pelaajia #{@pelaajat.length}, maaleja yhteensä #{self.maaleja_yhteensa}"
  end
end
