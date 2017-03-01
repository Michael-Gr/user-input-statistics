puts "Give me a number"
input_from_user_as_string = gets

begin
  input_from_user_as_number = Float(input_from_user_as_string)
  puts "you gave me #{(input_from_user_as_number)}"
rescue ArgumentError
  # this is run if the lines between 'begin' and 'rescue'
  # generate an ArgumentError
  puts "hmm, that wasnt a number"
end
