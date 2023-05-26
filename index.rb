# Class Variables
class Circle
  @@total_circles = 0

  def initialize(radius)
    @radius = radius
    @@total_circles += 1
  end

  def self.total_circles
    @@total_circles
  end
end

circle1 = Circle.new(5)
circle2 = Circle.new(10)

puts Circle.total_circles
# Output: 2




# Class method
class MathHelper
  def self.square(x)
    x * x
  end

  def self.cube(x)
    x * x * x
  end
end

puts MathHelper.square(5)
# Output: 25

puts MathHelper.cube(2)
# Output: 8





#Public and private methods
class MyClass
  def public_method
    puts "This is a public method."
    private_method
  end

  private

  def private_method
    puts "This is a private method."
  end
end

obj = MyClass.new
obj.public_method
# Output:
# This is a public method.
# This is a private method.

obj.private_method
# Output: NoMethodError (private method `private_method' called)





#protected methods
class MyClass
  def public_method
    puts "This is a public method."
  end

  protected

  def protected_method
    puts "This is a protected method."
  end
end

class MySubclass < MyClass
  def access_protected_method(other)
    other.protected_method
  end
end

obj1 = MyClass.new
obj2 = MyClass.new
subobj = MySubclass.new

obj1.public_method
# Output: This is a public method.

obj1.protected_method
# Output: NoMethodError (protected method `protected_method' called)

subobj.access_protected_method(obj1)
# Output: This is a protected method.





# Defining a module
module MyModule
  def hello
    puts "Hello from MyModule!"
  end
end

# Using a module
class MyClass
  include MyModule
end

obj = MyClass.new
obj.hello
# Output: Hello from MyModule!



# Using super to overidde a method
class Parent
  def greeting
    puts "Hello from Parent!"
  end
end

class Child < Parent
  def greeting
    puts "Hello from Child!"
  end
end

child = Child.new
child.greeting
# Output: Hello from Child!




#Using super to invoke the super class method
class Parent
  def greeting
    puts "Hello from Parent!"
  end
end

class Child < Parent
  def greeting
    super
    puts "Additional message from Child!"
  end
end

child = Child.new
child.greeting
# Output:
# Hello from Parent!
# Additional message from Child!
