require_relative './product'

class Deposit < Product
  attr_accessor :balance, :rate, :period

  def open(first_name, last_name, amount, rate, period)
    super(first_name,last_name)
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
    puts "ID: #{id}"
    puts "Имя владельца: #{first_name} #{last_name}"
    puts "Баланс вклада: #{balance} рублей"
    puts "Процентная ставка вклада: #{rate}%"
    puts "Срок вклада: #{period} месяцев"
  end

  def close
    @status = :closed
    puts "Ваш вклад №#{id} закрыт"
  end
end
