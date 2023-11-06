require_relative './product'

class Account < Product
  attr_accessor :balance

  def open(first_name, last_name)
    super(first_name,last_name,id,status,balance)
    self
  end

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
    puts "ID: #{id}"
    puts "Имя владельца: #{first_name} #{last_name}"
    puts "Баланс счёта: #{balance} рублей"
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
