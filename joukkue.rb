class Joukkue
	attr_accessor :nimi, :pelaajat

	def initialize(nimi)
		@nimi = nimi
		@pelaajat = []
		@maalejaYht = 0
	end

	def lisaa_pelaaja(pelaaja)
		@pelaajat << pelaaja
	end

	def maaleja_yhteensa
		count = 0
		pelaajat.each { |p| count += p.maaleja }
		count
	end

	def paras_maalintekija
		best = Pelaaja.new "Null", 0
		pelaajat.each { |p| best = p if p.maaleja > best.maaleja }
		best
	end
	def to_s
		"#{nimi}, pelaajia #{pelaajat.size}, maaleja yhteensä #{maaleja_yhteensa}"
	end

end
