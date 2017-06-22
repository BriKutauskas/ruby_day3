# Story: As a programmer, I can make a vehicle.
# Hint: Test that Vehicle.new does not raise any errors.
require 'rspec'
require_relative 'vehicle'

describe Vehicle do
  it "has to be real" do
    expect {Vehicle.new}.to_not raise_error
  end
end









#
# Story: As a programmer, I can speed my Teslas up by 10 km/h per acceleration.
#
# Story: As a programmer, I can slow my Teslas down by 7 km/h per braking.
#
# Story: As a programmer, I can speed my Tatas up by 2 km/h per acceleration.
#
# Story: As a programmer, I can slow my Tatas down by 1.25 km/h per braking.
#
# Story: As a programmer, I can speed my Toyotas up by 7 km/h per acceleration.
#
# Story: As a programmer, I can slow my Toyotas down by 5 km/h per braking.
#
# Story: As a programmer, I can call upon a car to tell me all it's information.
# Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
#
# Story: As a programmer, I can store and retrieve all of my cars from a garage.
# Hint: "Garage" is a noun, "store" and "retrieve" are verbs.
#
# Story: As a programmer, I can sort the cars in my garage based on model year.
#
# Story: As a programmer, I can sort the cars in my garage based on model.
# Hint: Sort based on class name.
#
# Story: As a programmer, I can sort the cars in my garage based on model and then year.
# Hint: Find out how the spaceship operator can help you with an array.
