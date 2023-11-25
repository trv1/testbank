class Product
  STATUSES = [:opened, :closed]

  attr_accessor :id, :first_name, :last_name, :status

  def info
    puts "ID: #{id}"
    puts "Имя владельца: #{first_name} #{last_name}"
  end
end
