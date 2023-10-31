require_relative './product'

class Deposit < Product
  attr_accessor :balance, :rate, :period

  def open(first_name, last_name, amount, rate, period)
    @id = "%06d" % rand(1e6)
    @first_name = first_name
    @last_name = last_name
    @status = :opened
    @balance = amount
    @rate = rate
    @period = period

    self
  end

  def monthly_profit
    puts "Ваш ежемесячный доход составляет #{(balance * rate / 100.0 / 12.0).round} рублей"
  end

  def all_profit
    puts "Ваш доход за весь срок составляет #{(balance * rate / 100.0 / 12.0).round * period} рублей"
  end

  def info
    super
    puts "Баланс вклада: #{balance} рублей"
    puts "Процентная ставка вклада: #{rate}%"
    puts "Срок вклада: #{period} месяцев"
  end

  def close
    @status = :closed
    puts "Ваш вклад №#{id} закрыт"
  end
end
