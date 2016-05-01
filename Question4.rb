#a.	class is called Troll
class Troll
	#b.	class has publicly accessible attributes ugliness, smelliness, and strength
	attr_accessor :ugliness, :smelliness, :strength, :grunt
	
	#c.	upon instantiation, an object of this class has a member variable, a String, called grunt, 
	#whose initial value is "UNGAH" (that's pronounce "oon-guh").
	def initialize (str="UNGAH")
		@grunt = str
	end
	
	#d.	class has an instance method called speak() that prints the value of the instance variable grunt 42 times
	def speak
		for i in 1..42
			puts grunt
		end
	end
	
	#e.	class has an instance method called reverse() that prints the value of the instance variable grunt backwards
	def reverse
		puts @grunt.reverse
	end
	
	#f.	class has a static/class method called propagate(), which returns a Troll instance whose grunt attribute is "eegah"
	def self.propagate
		if @grunt == "eegah"
			puts "Found a matching instance"
			#return self
		end
	end
	
	#g
	def respond_to?(str)
		return (str == "fight")
	end
end

t = Troll.new
#t.speak
t.reverse

#t1 = Troll.new
#t1.grunt = "eegah"
#Troll.propagate

#g.	Troll instance fred
fred = Troll.new
puts fred.respond_to?("fight") #h.	fred.respond_to?("fight") returns true