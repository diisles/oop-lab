class Tenant

  attr_accessor :n_name, :occupation, :f_name, :l_name, :born_on, :gender

    def initialize f_name, l_name, born_on, gender
      @f_name = f_name
      @l_name = l_name
      @born_on = born_on
      @gender = gender
      @n_name = n_name
    end
    def full_name
      "#{@f_name}  #{@l_name} , #{@n_name}"
    end
  end
