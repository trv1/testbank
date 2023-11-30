require_relative './product'

class Deposit < Product
  attr_accessor :rate, :period

  def open(first_name, last_name, amount, rate, period)
    super(first_name,last_name,amount)
    @rate = rate
    @period = period
    self
  end

  def monthly_profit_formula
    (balance * rate / 100.0 / 12.0).round
  end

  def monthly_profit
    puts "Ваш ежемесячный доход составляет #{monthly_profit_formula} рублей"
  end

  def all_profit
    puts "Ваш доход за весь срок составляет #{monthly_profit_formula * period} рублей"
  end

  def info
    super
    puts "Баланс вклада: #{balance} рублей"
    puts "Процентная ставка вклада: #{rate}%"
    puts "Срок вклада: #{period} месяцев"
    end
  end
