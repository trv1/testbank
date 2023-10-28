require_relative './product'

class Account < Product
  attr_accessor :balance

  def open(first_name, last_name)
    super(id)
    @id = "%06d" % rand(1e6)
    super(first_name)
    @first_name = first_name
    super(last_name)
    @last_name = last_name
    @status = :opened
    @balance = 0

  def deposit_funds(amount)
    @balance += amount
    puts "Ваш счёт пополнен на #{amount} рублей. Ваш баланс #{balance} рублей"
  end

  def withdraw_funds(amount)
    if amount <= @balance
      @balance -= amount
      puts "Вы сняли #{amount} рублей. Ваш баланс #{balance} рублей"
    else
      puts 'Недостаточно средств на счёте'
    end
  end

  def info
    super
    puts "ID: #{id}"
    super
    puts "Имя владельца: #{first_name} #{last_name}"
    super
    puts "Баланс вклада: #{balance} рублей"
  end

  def close
    if @balance.zero?
      @status = :closed
      puts "Ваш счёт №#{id} закрыт"
    else
      puts 'Снимите все средства перед закрытием счёта'
    end
  end
end
