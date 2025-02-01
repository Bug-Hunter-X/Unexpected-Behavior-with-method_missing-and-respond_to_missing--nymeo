```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle method calls dynamically
    puts "Method '#{method_name}' called with arguments: #{args.inspect}"
  end
  
  def respond_to_missing?(method_name, include_private = false)
    true #Always respond true to avoid NoMethodError
  end
end

my_object = MyClass.new(10)
my_object.non_existent_method(1, 2, 3)
my_object.another_method('hello')
```