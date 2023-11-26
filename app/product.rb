class Product
  STATUSES = [:opened, :closed]
  NAMES = {
    'Account' => 'счёт',
    'Deposit' => 'вклад',
    'Credit' => 'кредит'
  }.freeze

  attr_accessor :id, :first_name, :last_name, :status, :balance
  def open(first_name,last_name,balance)
    @first_name = first_name
    @last_name = last_name
    @id = "%06d" % rand(1e6)
    @status = :opened
    @balance = 0
  end

  def info
    puts "ID: #{id}"
    puts "Имя владельца: #{first_name} #{last_name}"
  end
end
