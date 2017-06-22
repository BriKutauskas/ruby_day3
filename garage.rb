require_relative 'car.rb'
class Garage
  def initialize
  @garage = []
  end

  def store(garage)
    @garage << garage
  end

  def retrieve
    @garage
  end

  def sort
    @garage.sort_by! {|e| e.model_year}
  end

  def sorted
    @garage.sort_by! {|e| [e.model_year, e.class.to_s]}
  end


end



# tesla1 = Tesla.new("honk", 2016)
# garage_a.store(tesla1)
