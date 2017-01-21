class Pelaaja
    attr_reader :nimi
    attr_accessor :pituus

    def initialize(nimi, pituus)
        @nimi = nimi
        @pituus = pituus
        @maalit = 0
    end

    def maaleja
        @maalit
    end

    def lisaa_maali
        @maalit += 1
    end

    def to_s
        "#{@nimi} (#{pituus} cm) maaleja #{@maalit}"
    end
end


