require_relative './product'

class Deposit < Product
  attr_accessor :balance, :rate, :period

  def open
    @id = "%06d" % rand(1e6)
    @first_name = first_name
    @last_name = last_name
    @rate = rate
    @period = period
    @status = :opened
    @balance = 0

     self
  end

  def dohod
    puts "Ваш доход #{balance * rate}"

  def monthly_profit
    puts "Ваш ежемесячный доход составляет #{dohod / 100.0 / 12.0.round} рублей"
  end

  def all_profit
    puts "Ваш доход за весь срок составляет #{dohod / 100.0 / 12.0.round * period} рублей"
  end

  def info
    puts "ID: #{id}"
    puts "Имя владельца: #{first_name} #{last_name}"
    puts "Баланс вклада: #{balance} рублей"
    puts "Процентная ставка вклада: #{rate}%"
    puts "Срок вклада: #{period} месяцев"
  end

  end

  def close
    @status = :closed
    puts "Ваш вклад №#{id} закрыт"
  end
end
end

