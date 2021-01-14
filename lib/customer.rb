class Customer
  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self

end

def self.all
    @@all
    end
end

def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
end

def meals
    Meal.all.select do |meal|
        meal.customer == self
    end
end

def waiters
    meals.map do |meal|
        meal.waiter
    end
end




alex = Customer.new("Alex", 30)
rachel = Customer.new("Rachel", 27)
dan = Waiter.new("Dan", 3)

rachel.new_meal(dan, 50, 10)
alex.new_meal(dan, 30, 5)

terrance = Customer.new("Terrance", 27)
jason = Waiter.new("Jason", 4)
andrew = Waiter.new("Andrew", 7)
yomi = Waiter.new("Yomi", 10)

terrance.new_meal(jason, 50, 6)
terrance.new_meal(andrew, 60, 8)
terrance.new_meal(yomi, 30, 4)