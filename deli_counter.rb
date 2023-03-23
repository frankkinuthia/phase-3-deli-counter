# Write your code here.

def line(katz_deli)
    # If the line is empty (i.e., katz_deli is an empty array), the method outputs the string "The line is currently empty.".
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    # If there are people in line, loops through each element of the katz_deli array using the each_with_index method.
    current_line = "The line is currently:"
    katz_deli.each_with_index do |name, index|
        # For each element (which represents a customer's name), the method adds the customer's name and position in line to the current_line string.
      current_line += " #{index + 1}. #{name}"
    end
    # Outputs the current_line string, which displays the current line in the format "The line is currently: 1. Alice 2. Bob 3. Charlie".
    puts current_line
  end
end


def take_a_number(katz_deli, name)
    katz_deli << name # Add the new customer's name to the end of the line
    position_in_line = katz_deli.length # Determine the new customer's position in line
    puts "Welcome, #{name}. You are number #{position_in_line} in line."
end
  

def now_serving(katz_deli)
    if katz_deli.empty?
      puts "There is nobody waiting to be served!"
    else
      next_customer = katz_deli.shift # Get the next customer in line and remove them from the front
      puts "Currently serving #{next_customer}."
    end
end
  
