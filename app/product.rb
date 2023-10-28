class Product
  STATUSES = [:opened, :closed]

  attr_accessor :id, :first_name, :last_name, :status

  def info 
  	puts "Баланс вклада: #{balance} рублей"
  	puts "Процентная ставка вклада: #{rate}%"
    puts "Срок вклада: #{period} месяцев"

  def open
  	@id = "%06d" % rand(1e6)
    @first_name = first_name
    @last_name = last_name
  
end
