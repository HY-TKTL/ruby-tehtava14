require './pelaaja.rb'

class Joukkue

    def initialize(nimi)
        @nimi = nimi
        @pelaajat = []
    end

    def lisaa_pelaaja(pelaaja)
        @pelaajat.push(pelaaja)
    end

    def maaleja_yhteensa
        @pelaajat.inject(0){ |tulos, pelaaja| tulos + pelaaja.maaleja }
    end

    def paras_maalintekija
        paras = nil
        @pelaajat.each do |pelaaja|
            if paras == nil || pelaaja.maaleja > paras.maaleja
                paras = pelaaja
            end
        end
        paras
    end

    def to_s
        "#{@nimi}, pelaajia #{@pelaajat.length}, maaleja yhteensä #{maaleja_yhteensa()}"
    end

end