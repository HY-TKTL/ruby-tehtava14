class Pelaaja
  attr_reader :nimi, :maaleja
  attr_accessor :pituus

  def initialize(nimi, pituus)
    @maaleja = 0
    @nimi = nimi
    @pituus = pituus
  end

  def lisaa_maali
    @maaleja += 1
  end

  def to_s
    "#{@nimi} (#{@pituus} cm) maaleja #{@maaleja}"
  end

end
