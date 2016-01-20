RSpec.describe 'luokka Pelaaja' do
  it "kopioitu edellisesta tehtavasta" do
    expect(File.exists? './pelaaja.rb' ).to be true
    require './pelaaja.rb'
    Pelaaja
  end
end

RSpec.describe 'luokka Joukkue' do
  it "on maaritelty oikeassa tiedostossa" do
    expect(File.exists? './joukkue.rb' ).to be true
    require './joukkue.rb'
    Joukkue
  end

  it "konstruktori ja to_s toimivat" do
    require './joukkue.rb'
    j1 = Joukkue.new "Kumpulan pallo"
    expect(j1.to_s).to eq('Kumpulan pallo, pelaajia 0, maaleja yhteensa 0')

    j2 = Joukkue.new "Alppilan urheilijat"
    expect(j2.to_s).to eq('Alppilan urheilijat, pelaajia 0, maaleja yhteensa 0')
  end

  it "pelaajien lisaaminen" do
    require './joukkue.rb'
    j = Joukkue.new "Kumpulan pallo"
    j.lisaa_pelaaja Pelaaja.new('chang', 170)
    expect(j.to_s).to eq('Kumpulan pallo, pelaajia 1, maaleja yhteensa 0')
    j.lisaa_pelaaja Pelaaja.new('arto', 181)
    j.lisaa_pelaaja Pelaaja.new('ada', 160)
    expect(j.to_s).to eq('Kumpulan pallo, pelaajia 3, maaleja yhteensa 0')
  end

  it "maalien maara" do
    require './joukkue.rb'
    j = Joukkue.new "Kumpulan pallo"
    p1 = Pelaaja.new('chang', 170)
    p2 = Pelaaja.new('arto', 181)
    p3 = Pelaaja.new('ada', 160)
    j.lisaa_pelaaja p1
    j.lisaa_pelaaja p2
    j.lisaa_pelaaja p3
    expect(j.maaleja_yhteensa).to eq 0
    expect(j.to_s).to eq('Kumpulan pallo, pelaajia 3, maaleja yhteensa 0')
    p1.lisaa_maali
    expect(j.maaleja_yhteensa).to eq 1
    expect(j.to_s).to eq('Kumpulan pallo, pelaajia 3, maaleja yhteensa 1')
    3.times{ p2.lisaa_maali }
    7.times{ p3.lisaa_maali }
    expect(j.maaleja_yhteensa).to eq 11
    expect(j.to_s).to eq('Kumpulan pallo, pelaajia 3, maaleja yhteensa 11')
  end

  it "paras maalintekija" do
    require './joukkue.rb'
    j = Joukkue.new "Kumpulan pallo"
    p1 = Pelaaja.new('chang', 170)
    p2 = Pelaaja.new('arto', 181)
    p3 = Pelaaja.new('ada', 160)
    j.lisaa_pelaaja p1
    j.lisaa_pelaaja p2
    j.lisaa_pelaaja p3
    p1.lisaa_maali
    expect(j.paras_maalintekija).to eq p1
    3.times{ p2.lisaa_maali }
    expect(j.paras_maalintekija).to eq p2
    7.times{ p3.lisaa_maali }
    expect(j.paras_maalintekija).to eq p3
    p4 = Pelaaja.new('ukkonen', 201)
    j.lisaa_pelaaja p4
    10.times { p4.lisaa_maali }
    expect(j.paras_maalintekija).to eq p4
  end
end
