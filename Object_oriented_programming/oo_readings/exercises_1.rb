class MyCar
  attr_accessor :color
  attr_reader :year
   
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end
  
  def self.mileage(litres, kms)
    puts "#{kms / litres} kms per litre of petrol"
  end
  
  def to_s
    puts "My car is a #{@model} from #{year}, and is #{color} in color."
  end
  
  def speed_up(number)
    @current_speed += number
    puts "You hit the gas and sped up to #{@current_speed}kms/hr!"
  end
  
  def brake(number)
    if @current_speed - number <= 0
        @current_speed = 0
        puts "Your car has stopped!"
    else
        @current_speed -= number
        puts "You hit the brake and your speed is now #{@current_speed}kms/hr"
    end
  end
  
  def shut_off
    @current_speed = 0
    puts "You have stopped the car"
  end
  
  def current_speed
    puts "You are now going #{@current_speed}kms/hr"
  end
  
  def spray_paint(color)
    self.color = color
    puts "Nice!..Your car is now #{color}!"
  end
end

first_car = MyCar.new(1997, 'green', 'lancer')
first_car.speed_up(60)
first_car.current_speed
first_car.brake(80)
first_car.current_speed
first_car.speed_up(100)
first_car.current_speed
first_car.brake(80)
first_car.current_speed
first_car.shut_off
first_car.current_speed
puts first_car.color
first_car.color = 'black'
puts first_car.color
puts first_car.year
first_car.spray_paint('yellow')
MyCar.mileage(50, 600)

my_car = MyCar.new(2015, 'white', 'Subaru Forester')
puts my_car
