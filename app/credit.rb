require_relative './product'

class Credit < Product
  attr_accessor :balance, :rate, :period

  def open(first_name, last_name, amount, rate, period)
    super(first_name, last_name)
    @rate = rate
    @period = period
    @balance = amount
    self
  end

  def payment
    (balance / period.to_f).round + (balance * rate / 100.0 / 12.0).round
  end

  def monthly_payment
    puts "Ваш ежемесячный платёж составляет #{payment} рублей"
  end

  def pay_to_debt(amount)
    @balance -= amount
    puts "Вы внесли #{amount} рублей по кредиту №#{id}. Сумма долга #{balance} рублей"
    puts "Ежемесячный платёж уменьшился и стал #{payment} рублей"
  end

  def info
    super
    puts "Сумма долга: #{balance} рублей"
    puts "Процентная ставка: #{rate}%"
    puts "Срок кредита: #{period} месяцев"
  end
end

 