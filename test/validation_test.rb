# validation_test.rb

# Load the Rails environment
require_relative '../config/environment'

# Now you can use the Product model
product = Product.create

if product.errors.any?
  puts "Errors:"
  product.errors.full_messages.each do |message|
    puts "- #{message}"
  end
else
  puts "Product created successfully!"
end
