require './pelaaja.rb'

class Joukkue

    def initialize(nimi)
        @nimi = nimi
        @pelaajat = []
    end


    def lisaa_pelaaja(pelaaja)
        @pelaajat << pelaaja
    end

    def maaleja_yhteensa()
        self.maalilista.inject(0, :+)
    end

    def paras_maalintekija()
        sorted_pelaajat = @pelaajat.sort {|p1, p2| p2.maaleja <=> p1.maaleja}
        sorted_pelaajat[0]
    end

    def maalilista()
        @pelaajat.map {|pelaaja| pelaaja.maaleja}
    end

    def to_s()
        "#{@nimi}, pelaajia #{@pelaajat.count}, maaleja yhteensä #{self.maaleja_yhteensa}"
    end

end