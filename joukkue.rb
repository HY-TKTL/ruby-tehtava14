require './pelaaja.rb'

class Joukkue

	def initialize(nimi)
		@nimi = nimi
		@pelaajat = Array.new
	end

	def lisaa_pelaaja(pelaaja)
		@pelaajat.push(pelaaja)
	end

	def maaleja_yhteensa
		maalit = 0
		@pelaajat.each do |pelaaja| 
			maalit += pelaaja.maaleja
		end
		maalit
	end

	def paras_maalintekija
		tekija = @pelaajat.first
		@pelaajat.each do |pelaaja| 
			tekija = pelaaja if pelaaja.maaleja > tekija.maaleja			
		end
		tekija
	end

	def to_s
		"#{@nimi}, pelaajia #{@pelaajat.length}, maaleja yhteensä #{self.maaleja_yhteensa}"
	end
end

