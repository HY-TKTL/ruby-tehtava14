class Pelaaja
	attr_reader :nimi
	attr_accessor :pituus, :maaleja

	def initialize(nimi, pituus)
		@nimi = nimi
		@pituus = pituus
		@maaleja = 0
	end

	def lisaa_maali
		self.maaleja += 1
	end

	def to_s
		"#{self.nimi} (#{self.pituus} cm) maaleja #{self.maaleja}"
	end
end