# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  name = %w(Jonas Petras Antanas Jurgis Pranas Gedgaudas Andrius Ramunas).sample
  surname = %w(Karbauskis Tapinas Renovacijus Kontautas Teslagalvijus).sample
  position = %w(Meistras Saltkalvis Praktikantas Direktorius Administratore).sample
  email = "#{name}.#{surname}#{rand(10000..99999)}@example.com"

  Worker.create(name: name, surname: surname, position: position, email: email)
end

10.times do
  name = %w(Jonas Petras Antanas Jurgis Pranas Gedgaudas Andrius Ramunas).sample
  surname = %w(Karbauskis Tapinas Renovacijus Kontautas Teslagalvijus).sample
  email = "#{name}.#{surname}#{rand(10000..99999)}@example.com"
  phone = "#{rand(100000..999999)}"

  Client.create(name: name, surname: surname, email: email, phone: phone)
end

Client.all.each do |client|
  3.times do
    client.cars.create(make: %w(Audi BMW HONDA SUBARU MAZDA SANGYONG LADA).sample, 
                       model: %w(100 330 Impreza 2107 CEED S60 Evoque).sample,
                       production_year: "#{rand(1950..2017)}", 
                       license_plate: "#{('AAA'..'ZZZ').to_a.sample}#{format('%03d', rand(1..999))}",
                       vin_code: Vinbot::Vin.generate,
                       body_type: %w(Sedanas Universalas Kabrioletas Vienatūris Hečbekas Visureigis).sample,
                       cubic_capacity: "#{rand(500..8000)}",
                       power: "#{rand(20..500)}",
                       fuel: %w(Benzinas Dyzelis Benzinas/Dujos Elektra).sample,
                       color: %w(Raudona, Mėlyna, Žalia, Juoda, Balta, Geltona, Pilka).sample,
                       ta_date: rand(Time.now..Time.now + 2.years))
  end
end

Car.all.each do |car|                           
  5.times do
    client_id = car.client_id

    car.visits.create(name: "#{%w(Aptarnavimas, Bilda važiuoklė, Nesisuka ratai, Pasiruošimas TA ).sample}",
                      end_date: Time.now - rand(10..15).days,
                      return_date: Time.now + rand(5..10).days,
                      mileage: rand(100..1234567),
                      client_id: client_id)
  end    
end

Visit.all.each do |visit|
  visit.visit_statuses.create(name: "Priimta servise",
    date: Time.now - 20.days,
    comment: "Apžiūrėta neatidžiai")
  visit.visit_statuses.create(name: "Laukiama detalių",
    date: Time.now - 18.days,
    comment: "Turėtų atvykti po trijų dienų")
  visit.visit_statuses.create(name: "Remonto darbai baigti",
    date: visit.end_date,
    comment: "Galite atsiimti automobilį mūsų darbo metu")
  visit.visit_statuses.create(name: "Automobilis atiduotas klientui",
    date: visit.return_date,
    comment: "Klientas nusiskundimų neturėjo")
  3.times do
    service = visit.services.create(name: "#{%w(Pakeisti Pareguliuoti Suremontuoti Isiimti Priklijuoti).sample} #{%w(tepalus valytuvus stikla veidrodeli varikli padangas).sample}",
      description: "Reikia sutaisyti kažką", worker_id: rand(1..5))

    
  end
end
Service.all.each do |service|
  service.repair_statuses.create(name: "Darbas pradėtas",
    date: Time.now - 20.days,
    comment: "Reikia nuvalyti")
  service.repair_statuses.create(name: "Užsakyotos dalys",
    date: Time.now - 18.days,
    comment: "Turėtų atvykti po trijų dienų")
  service.repair_statuses.create(name: "Darbas atliktas",
    date: Time.now - 16.days,
    comment: "Viskas veikia") 
  3.times do
    service.parts.create(name: %w(Stiklas variklis alyva filtras padangos duslintuvas).sample,
      code: rand(1000000000..99999999999),
      unit: %w(vnt. l m).sample,
      quantity: rand(1..5),
      price: rand(10..250))
    service.works.create(name: "#{%w(alyvos variklio stiklo lemputes padangu).sample} #{%w(keitimas reguliavimas isardymas surinkimas valymas salinimas).sample}",
     unit: %w(vnt. h).sample,
     quantity: rand(1..5),
     price: rand(10..100))
  end
end


