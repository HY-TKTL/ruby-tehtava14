class Pelaaja
  
  def initialize(nimi, pituus)
    @nimi = nimi
    @pituus = pituus
    @maaleja = 0
  end

  attr_accessor :pituus

  def maaleja
    @maaleja
  end

  def nimi
    @nimi
  end

  def lisaa_maali
    @maaleja += 1
  end

  def to_s
    "#{@nimi} (#{@pituus} cm) maaleja #{@maaleja}"
  end
end
