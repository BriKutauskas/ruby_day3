require 'rspec'
require_relative 'car.rb'
require_relative 'garage.rb'

describe Tesla do

  it "has to be real and inherit from car" do
    expect {Tesla.new("Beep-bee-bee-boop-bee-doo-weep", 2017)}.to_not raise_error
  end

  it "has a horn" do
    expect(Tesla.new("Beep-bee-bee-boop-bee-doo-weep", 2017).honk_horn).to eq("Beep-bee-bee-boop-bee-doo-weep")
  end

  it "has model year" do
    expect(Tesla.new("Beep-bee-bee-boop-bee-doo-weep", 2017).model_year).to be(2017)
  end

  it "has lights that turn off and on" do
    expect(Tesla.new("Beep-bee-bee-boop-bee-doo-weep", 2017).lights).to eq(true)
  end

  it "signal left" do
    expect(Tesla.new("Beep-bee-bee-boop-bee-doo-weep", 2017).signal_left).to eq("left")
  end

  it "signal right" do
    expect(Tesla.new("Beep-bee-bee-boop-bee-doo-weep", 2017).signal_right).to eq("right")
  end

  it "accelerates at 10 mph" do
    expect(Tesla.new("Beep-bee-bee-boop-bee-doo-weep", 2017).accelerate).to be(10)
  end

  it "brakes at 7 mph" do
    expect(Tesla.new("Beep-bee-bee-boop-bee-doo-weep", 2017).brake).to be(-7)
  end

  it "calls information about car" do
    expect(Tesla.new("Beep-bee-bee-boop-bee-doo-weep", 2017).to_s).to eq("4, Beep-bee-bee-boop-bee-doo-weep, 2017, true, left, right, 0")
  end

  it "checks garage for cars" do
    tesla = Tesla.new("beep", 2017)
    toyota = Toyota.new("horn", 1985)
    garage_1 = Garage.new
    expect{garage_1.store(tesla)}.to change{garage_1.retrieve}
    expect{garage_1.store(toyota)}.to change{garage_1.retrieve}
  end


  it "sorts cars in garage by model year" do
    tesla1 = Tesla.new("beep", 2017)
    toyota1 = Toyota.new("horn", 1985)
    garage_2 = Garage.new
    garage_2.store(tesla1)
    garage_2.store(toyota1)
    expect{garage_2.sort}.to change{garage_2.retrieve}
  end

  it "sorts car in garage by model year and class" do
    tesla2 = Tesla.new("beep", 2017)
    toyota2 = Toyota.new("horn", 1985)
    garage_3 = Garage.new
    garage_3.store(tesla2)
    garage_3.store(toyota2)
    expect{garage_3.sorted}.to change{garage_3.retrieve}
  end

end

# Story: As a programmer, I can make a Tata car.
#
# Story: As a programmer, I can honk the horn of a Tata car - "beep".
#
# Story: As a programmer, I can make a Tesla car.
#
# Story: As a programmer, I can honk the horn of Tesla - "Beep-bee-bee-boop-bee-doo-weep".
