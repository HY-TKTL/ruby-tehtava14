class Pelaaja
	attr_reader :nimi
  	attr_accessor :pituus

  	def initialize(nimi, pituus)
  		@maalit = 0
  		@nimi = nimi
  		@pituus = pituus
  	end

  	def lisaa_maali
  		@maalit += 1
  	end

  	def maaleja
  		return @maalit
  	end

  	def to_s
  		"#{@nimi} (#{@pituus} cm) maaleja #{@maalit}"
  	end	
  end

