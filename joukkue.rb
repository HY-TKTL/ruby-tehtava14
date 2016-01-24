require './pelaaja.rb'

class Joukkue

	def initialize nimi
		@nimi = nimi
		@pelaajat = []
	end

	def lisaa_pelaaja pelaaja
		if pelaaja.is_a? Pelaaja
			@pelaajat << pelaaja
		else
			puts "Joukkueeseen voi lisätä vain pelaajia"
		end
	end

	def maaleja_yhteensa
		@pelaajat.inject(0) {|maaleja, p| maaleja += p.maaleja}
	end

	def paras_maalintekija
		if @pelaajat.count == 0
			return
		end

		paras = @pelaajat.first

		@pelaajat.each do |x|
			if x.maaleja > paras.maaleja
				paras = x
			end
		end

		paras
	end

	def to_s
		"#{@nimi}, pelaajia #{@pelaajat.count}, maaleja yhteensä #{maaleja_yhteensa}"
	end

end