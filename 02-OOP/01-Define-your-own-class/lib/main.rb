require_relative "user"


melanie = User.new("melanie", "navarro", "F", Date.new(1984, 04, 30), "melanie.navarro.pro@gmail.com")

puts melanie.suscribed

melanie.suscribe_to_newsletter
puts melanie.suscribed

puts "l'anniv de melanie est le " + melanie.birthday.to_s


nicolas = User.new("nicolas", "goudy", "M", Date.new(1984, 4, 8), "nicolas@gmail.com")
puts "l'anniv de nicolas est le " + nicolas.birthday.to_s