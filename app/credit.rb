require_relative './product'

class Credit < Product
  attr_accessor :rate, :period

  def open(first_name, last_name, amount, rate, period)
    super(first_name, last_name,amount)
    @rate = rate
    @period = period
    self
  end

  def monthly_payment
    payment = (balance / period.to_f).round + (balance * rate / 100.0 / 12.0).round
    puts "Ваш ежемесячный платёж составляет #{payment} рублей"
  end

  def pay_to_debt(amount)
    @balance -= amount
    puts "Вы внесли #{amount} рублей по кредиту №#{id}. Сумма долга #{balance} рублей"
    payment = (balance / period.to_f).round + (balance * rate / 100.0 / 12.0).round
    puts "Ежемесячный платёж уменьшился и стал #{payment} рублей"
  end

  def info
    super
    puts "Сумма долга: #{balance} рублей"
    puts "Процентная ставка: #{rate}%"
    puts "Срок кредита: #{period} месяцев"
  end

  def close
    if balance.zero?
      @status = :closed
      puts "Ваш кредит №#{id} закрыт"
    else
      puts 'Погасите всю сумму долга перед закрытием счёта'
    end
  end
end
