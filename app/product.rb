class Product
  STATUSES = [:opened, :closed]

  attr_accessor :id, :first_name, :last_name, :status
  def open(first_name, last_name)
  	@first_name = first_name
    @last_name = last_name
end
end
