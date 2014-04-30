
# This is how you define your own custom exception classes

class DepositError < StandardError
end

class BankAccount

  # Contract for the BankAccount class
  # - you can access full owner's name and position, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account infos
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the position variable)

  MIN_DEPOSIT =  100

  attr_reader :name, :position
  attr_accessor :transactions



  def initialize(name, iban, initial_deposit, password)
    raise DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = []
    @position = 0
    @name, @iban = name, iban

    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    @position -= amount
    @transactions << (-amount)
    "your withdrawal is #{amount}. Your current position is #{@position}"
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
  end

  def deposit(amount)
    @position += amount
    @transactions << amount
    "your deposit is #{amount}. Your current position is #{@position}"
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
  end

  def transactions_history(args = {})
    # TODO: Check if there is a password and if so if it is correct
    if args[:password]
      if args[:password] == @password
        @transactions.each {|transaction| "#{@transaction}"}.join(",")
      else
        "wrong password"
      end
    else
      "no password given"
    end

    # TODO: return a string displaying the transactions, BUT NOT return the transaction array !
  end

  def iban
    # TODO: Hide the middle of the IBAN like FR14**************606 and return it
    new_iban = @iban[0,3] + "***********" + @iban[-3, -1]
  end

  def to_s
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: Displays the account owner, the hidden iban and the position of the account
    iban
    puts "here your account informations #{@name} #{iban} #{@position}"
  end

  private

  def add_transaction(amount)
    # TODO: add the amount in the transactions array

    @transactions << amount
    @position += amount
    # TODO: update the current position (which represents the balance of the account)
  end

end



#melanie_account = BankAccount.new("Melanie Navarro", "33-FR-555666566", 105, "colombo")
#puts melanie_account.withdraw(10)






