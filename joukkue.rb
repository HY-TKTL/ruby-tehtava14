require './pelaaja.rb'


class Joukkue
    def initialize(nimi)
        @nimi = nimi
        @pelaajat = []
    end

    def lisaa_pelaaja(pelaaja)
        @pelaajat<<pelaaja
    end

    def maaleja_yhteensa
        @pelaajat.inject(0){|s,x|s + x.maaleja}
    end

    def paras_maalintekija
        @pelaajat.sort{|x,y| x.maaleja - y.maaleja}.last
    end

    def to_s
        "#{@nimi}, pelaajia #{@pelaajat.length}, maaleja yhteensä #{maaleja_yhteensa}"
    end
end
