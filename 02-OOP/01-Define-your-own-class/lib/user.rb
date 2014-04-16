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



