class Product
  STATUSES = [:opened, :closed]

  attr_accessor :id, :first_name, :last_name, :status, :balance
  def open(first_name,last_name)
  	@first_name = first_name
    @last_name = last_name
    @id = "%06d" % rand(1e6)
    @status = :opened
end
end
