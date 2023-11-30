class Product
  STATUSES = [:opened, :closed]
  NAMES = {
    'Account' => 'счет',
    'Deposit' => 'вклад',
    'Credit' => 'кредит'
  }.freeze

   NAMES = {
    'messengers' => 'Снимите все средства перед закрытием счёта',
    'vklad' => 'Погасите всю сумму долга перед закрытием счёта',
    'Credit' => 'Погасите всю сумму долга перед закрытием счёта'
  }.freeze

  attr_accessor :id, :first_name, :last_name, :status, :balance
  def open(first_name,last_name,balance)
    @first_name = first_name
    @last_name = last_name
    @id = "%06d" % rand(1e6)
    @status = :opened
    @balance = balance
  end

  NAMES[self.class.to_s]

  def info
    puts "ID: #{id}"
    puts "Имя владельца: #{first_name} #{last_name}"
  end
  def close
    if balance.zero?
      @status = :closed
      puts "Ваш счёт №#{id} закрыт"
    else
      puts 'Снимите все средства перед закрытием счёта'
    end
  end
end
