require 'rspec'
require_relative 'car.rb'

describe Car do
  it "has to be real" do
    expect {Car.new("Beep-bee-bee-boop-bee-doo-weep", 2017)}.to_not raise_error
  end

  it "has 4 wheels" do
    expect(Car.new("Beep-bee-bee-boop-bee-doo-weep", 2017).wheels).to be(4)
  end

  it "has a horn" do
    expect(Car.new("Beep-bee-bee-boop-bee-doo-weep", 2017).honk_horn).to eq("Beep-bee-bee-boop-bee-doo-weep")
  end

  it "has speed" do
    expect(Car.new("Beep-bee-bee-boop-bee-doo-weep", 2017).speed).to be(0)
  end
  



end

# Story: As a programmer, I can make a car.
# Hint: Test that creating an instance of the new class does not raise any errors.
#
# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.
#
# Story: As a programmer, I can honk the horn.
# Hint: When I call honk_horn, I get a "BEEP!".

# Story: As a programmer, I can make a Toyota car.
# Hint: Test that class Toyota which inherits from class Car can be created.
#
# Story: As a programmer, I can honk the horn of a Toyota car which makes the sound "whoop".
# Story: As a programmer, I can make a Tata car.
#
# Story: As a programmer, I can honk the horn of a Tata car - "beep".
#
# Story: As a programmer, I can make a Tesla car.
#
# Story: As a programmer, I can honk the horn of Tesla - "Beep-bee-bee-boop-bee-doo-weep".
