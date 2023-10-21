class Product
  STATUSES = [:opened, :closed]

  attr_accessor :id, :first_name, :last_name, :status
  def open(first_name, last_name)
    @id = "%06d" % rand(1e6)
    @first_name = first_name
    @last_name = last_name
    @status = :opened
    @balance = 0

    self
    def info
    puts "Сумма долга: #{debt} рублей"
    puts "Баланс вклада: #{balance} рублей"
    puts "Процентная ставка вклада: #{rate}%"
    puts "Срок вклада: #{period} месяцев"
  end

  end
end
