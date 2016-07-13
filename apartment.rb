class Apartment

  attr_accessor :unit, :num_bed, :num_baths, :tenants

  def initialize unit, num_beds, num_baths
    @unit = unit
    @num_beds = num_beds
    @num_baths = num_baths
    @tenants = []

  end
  def price
    @num_beds.to_i * 1000 + @num_baths.to_i * 500
  end

  def studio?
    	if @num_beds == 1
    		true
    	else
    		false
    	end
  end
  def move_in(tenant)
  	if full?
  		puts "We're full! #{tenant.f_name} #{tenant.l_name} can't move in!"


  	else
  		@tenants.push(tenant)
  	end
  end
  def empty?
  	@tenants.empty?

  end
  def full?
  	@tenants.length == @num_beds
  end
end
