require_relative './product'

class Credit < Product
  attr_accessor :debt, :rate, :period

  def open(first_name, last_name, amount, rate, period)
    super(first_name,last_name,id,status,balance)
    @debt = amount
    @rate = rate
    @period = period

    self
  end

  def monthly_payment
    payment = (amount / period.to_f).round + (amount * rate / 100.0 / 12.0).round
    puts "Ваш ежемесячный платёж составляет #{payment} рублей"
  end

  def pay_to_debt(amount)
    @debt -= amount
    puts "Вы внесли #{amount} рублей по кредиту №#{id}. Сумма долга #{debt} рублей"

    payment = (amount / period.to_f).round + (amount * rate / 100.0 / 12.0).round
    puts "Ежемесячный платёж уменьшился и стал #{payment} рублей"
  end

  def info
    puts "ID: #{id}"
    puts "Имя владельца: #{first_name} #{last_name}"
    puts "Сумма долга: #{debt} рублей"
    puts "Процентная ставка: #{rate}%"
    puts "Срок кредита: #{period} месяцев"
  end

  def close
    if @debt.zero?
      @status = :closed
      puts "Ваш кредит №#{id} закрыт"
    else
      puts 'Погасите всю сумму долга перед закрытием счёта'
    end
  end
end
