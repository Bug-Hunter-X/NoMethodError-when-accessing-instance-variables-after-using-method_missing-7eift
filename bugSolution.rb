```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' not found!\n"
  end

  def value
    @value
  end
end

object = MyClass.new(10)
object.nonexistent_method # Calls method_missing
puts object.value # Accesses @value via getter method
```