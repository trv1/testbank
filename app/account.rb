require_relative './product'

class Account < Product

  def open(first_name, last_name)
    super(first_name, last_name, 0)
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
    super
    puts "Баланс счёта: #{balance} рублей"
  end

  def close
    if balance.zero?
      @status = :closed
      puts "Ваш счёт №#{id} закрыт"
    else
      puts 'Снимите все средства перед закрытием счёта'
    end
  end
end
