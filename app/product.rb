class Product
  STATUSES = [:opened, :closed]
  NAMES = {
    'Account' => 'счет',
    'Deposit' => 'вклад',
    'Credit' => 'кредит'
  }.freeze

  attr_accessor :id, :first_name, :last_name, :status, :balance
  def open(first_name,last_name,balance)
    @first_name = first_name
    @last_name = last_name
    @id = "%06d" % rand(1e6)
    @status = :opened
    @balance = balance
  end

  def close.NAMES[self.class.to_s]

  def info
    puts "ID: #{id}"
    puts "Имя владельца: #{first_name} #{last_name}"
  end
end
