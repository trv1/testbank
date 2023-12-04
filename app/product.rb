class Product
  STATUSES = [:opened, :closed]
  NAMES = {
    'Account' => 'счёт',
    'Deposit' => 'вклад',
    'Credit' => 'кредит'
  }.freeze

  NAMES_2 = {
  	'Account' => 'Снимите все средства перед закрытием счета',
  	'Deposit' => 'Снимите всю сумму вклада перед закрытием счета',
  	'Credit' => 'Погасите всю сумму долга перед закрытием счета'	
  }.freeze

  attr_accessor :id, :first_name, :last_name, :status, :balance

  def open(first_name,last_name)
    @first_name = first_name
    @last_name = last_name
    @id = "%06d" % rand(1e6)
    @status = :opened
  end

  def info
    puts "ID: #{id}"
    puts "Имя владельца: #{first_name} #{last_name}"
  end


  def close
    if balance.zero?
      @status = :closed
      puts "Ваш #{NAMES[self.class.to_s]} №#{id} закрыт"
    else
      puts NAMES_2[self.class.to_s]
    end
  end
end
