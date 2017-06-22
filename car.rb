class Car
  def initialize(horn, model_year)
    @honk_horn = horn
    @model_year = model_year
    @lights = false
    @signal = false
    @speed = 0
  end

  def wheels
    wheels = 4
  end

  def honk_horn
    @honk_horn
  end

  def model_year
    @model_year
  end

  def lights
    @lights = !@lights
  end

  def signal_left
    @signal = "left"
  end

  def signal_right
    @signal = "right"
  end

  def speed
    @speed
  end

  def to_s
    "#{wheels}, #{honk_horn}, #{model_year}, #{lights}, #{signal_left}, #{signal_right}, #{speed}"
  end

end

class Toyota < Car
  def accelerate
    @speed += 7
  end

  def brake
    @speed -= 5
  end
end

class Tesla < Car
  def accelerate
    @speed += 10
  end

  def brake
    @speed -= 7
  end

end

class Tata < Car
  def accelerate
    @speed += 2
  end

  def brake
    @speed -= 1.25
  end
end

# tesla = Tesla.new("beep", 2017)
# garage_a = Garage.new("2 car")
# tesla.store(garage_a)
#
# tesla1 = Tesla.new("honk", 2016)
# tesla1.store(garage_a)
