```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' not found!\n"
  end

end

object = MyClass.new(10)
object.nonexistent_method # This will call method_missing
object.value # This will raise NoMethodError
```