require "./pelaaja.rb"

class Joukkue

	attr_reader :nimi, :pelaajat

	def initialize(nimi)
		@nimi = nimi
		@pelaajat = []
	end

	def lisaa_pelaaja(pelaaja)
		self.pelaajat.push(pelaaja)
	end

	def maaleja_yhteensa
		self.pelaajat.inject(0) { |summa, pelaaja| summa + pelaaja.maaleja }
	end

	def paras_maalintekija
		self.pelaajat.max_by { |pelaaja| pelaaja.maaleja }
	end

	def to_s
		"#{self.nimi}, pelaajia #{self.pelaajat.count}, maaleja yhteensä #{self.maaleja_yhteensa}"
	end

end