class Product
  STATUSES = [:opened, :closed]

  attr_accessor :id, :first_name, :last_name, :status

  def info 
  	puts "Баланс вклада: #{balance} рублей"
  	puts "Процентная ставка вклада: #{rate}%"
    puts "Срок вклада: #{period} месяцев"
  
end
