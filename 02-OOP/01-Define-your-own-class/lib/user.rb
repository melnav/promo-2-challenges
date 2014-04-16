require "date"

class User
  def initialize(first_name, last_name, gender, birthday, email)
    @firt_name = first_name
    @last_name = last_name
    @gender = gender
    @birthday = birthday
    @email = email
    @suscribed = false
    @ordered = false

  end

  def suscribe_to_newsletter
    @suscribed = true
  end

  def unsuscribe_to_newsletter
    @suscribed = false
  end

  def order #forme active
    @ordered = true
  end

  def full_name
    "#{firt_name}" "#{last_name}"
  end
#stocker état = forme passive
  attr_reader :suscribed
  attr_accessor :firt_name, :last_name, :gender, :birthday, :email

end
require_relative "user"


melanie = User.new("melanie", "navarro", "F", Date.new(1984, 04, 30), "melanie.navarro.pro@gmail.com")

puts melanie.suscribed

melanie.suscribe_to_newsletter
puts melanie.suscribed

puts "l'anniv de melanie est le " + melanie.birthday.to_s


nicolas = User.new("nicolas", "goudy", "M", Date.new(1984, 4, 8), "nicolas@gmail.com")
puts "l'anniv de nicolas est le " + nicolas.birthday.to_s


