require './joukkue.rb'
require './pelaaja.rb'

j = Joukkue.new "Hukat"
p1 = Pelaaja.new "Atte", 182
p2 = Pelaaja.new "Mikko", 175
j.lisaa_pelaaja(p1)
j.lisaa_pelaaja(p2)
p1.lisaa_maali
p1.lisaa_maali
p2.lisaa_maali

puts j

puts j.maaleja_yhteensa

puts j.paras_maalintekija
