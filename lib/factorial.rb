
def factorial(n)
  product = 1
 
    while n > 0
      # Mystery new line!
      
      product *= n
      n -= 1
    binding.irb 
    end

    product
    
end
  
puts factorial(5)