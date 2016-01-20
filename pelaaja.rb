class Pelaaja
  attr_reader :nimi, :maaleja # vain getterit
  attr_accessor :pituus # getterit ja setterit

  def initialize(nimi, pituus)
    @nimi = nimi
    @pituus = pituus
    @maaleja = 0
  end

  def lisaa_maali()
    @maaleja += 1
  end

  def to_s()
    return "#{nimi} (#{pituus} cm) maaleja #{maaleja}"
  end
end
