class Puppy

  def initialze
  	p "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
  	integer.times {puts "Woof!"}
  end

  def roll_over
  	p "Rolls over."
  end

  def dog_years(integer)
  	p integer * 7
  end

  def wag_tail
  	p "Swish swish."
  end

end

Nala = Puppy.new
Nala.fetch("ball")
Nala.speak(2)
Nala.roll_over
Nala.dog_years(4)
Nala.wag_tail




