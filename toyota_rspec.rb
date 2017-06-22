require 'rspec'
require_relative 'car.rb'

describe Toyota do

  it "has to be real and inherit from car" do
    expect {Toyota.new("Whoop!", 2005)}.to_not raise_error
  end

  it "has a horn" do
    expect(Toyota.new("Whoop!", 2005).honk_horn).to eq("Whoop!")
  end

  it "has model year" do
    expect(Toyota.new("Beep-bee-bee-boop-bee-doo-weep", 2005).model_year).to be(2005)
  end

  it "has an accelerate of 7mph" do
    expect(Toyota.new("Beep-bee-bee-boop-bee-doo-weep", 2005).accelerate).to be(7)
  end

  it "has an brake of 5mph" do
    expect(Toyota.new("Beep-bee-bee-boop-bee-doo-weep", 2005).brake).to be(-5)
  end

end

# Story: As a programmer, I can make a Toyota car.
# Hint: Test that class Toyota which inherits from class Car can be created.
#
# Story: As a programmer, I can honk the horn of a Toyota car which makes the sound "whoop".
