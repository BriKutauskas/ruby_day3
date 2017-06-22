require 'rspec'
require_relative 'car.rb'

describe Tata do

  it "has to be real and inherit from car" do
    expect {Tata.new("beep", 1985)}.to_not raise_error
  end

  it "has a horn" do
    expect(Tata.new("beep", 1985).honk_horn).to eq("beep")
  end

  it "has model year" do
    expect(Tata.new("Beep-bee-bee-boop-bee-doo-weep", 1985).model_year).to be(1985)
  end

  it "has an accelerate of 2 mph" do
    expect(Tata.new("Beep-bee-bee-boop-bee-doo-weep", 1985).accelerate).to be(2)
  end

  it "has a brake of 1.25 mph" do
    expect(Tata.new("Beep-bee-bee-boop-bee-doo-weep", 1985).brake).to be(-1.25)
  end

end

# Story: As a programmer, I can make a Tata car.
#
# Story: As a programmer, I can honk the horn of a Tata car - "beep".
#
# Story: As a programmer, I can make a Tesla car.
#
# Story: As a programmer, I can honk the horn of Tesla - "Beep-bee-bee-boop-bee-doo-weep".
