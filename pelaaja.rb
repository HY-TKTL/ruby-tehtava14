class Pelaaja
        attr_accessor :pituus, :maalit
        attr_reader :nimi

        def initialize(nimi, pituus)
                @nimi = nimi
                @pituus = pituus
                @maalit = 0
        end

        def maaleja
                @maalit
        end

        def lisaa_maali
                @maalit = @maalit + 1
        end

        def to_s
                "#{nimi} (#{pituus} cm) maaleja #{maalit}"
        end
end


