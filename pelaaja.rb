class Pelaaja
    attr_reader :nimi
    attr_accessor :pituus

    def initialize(nimi, pituus)
        @maalimaara = 0
        @nimi = nimi
        @pituus = pituus
    end

    def lisaa_maali
        @maalimaara += 1
    end

    def maaleja
        @maalimaara
    end

    def to_s
        "#{@nimi} (#{@pituus} cm) maaleja #{@maalimaara}"
    end

end