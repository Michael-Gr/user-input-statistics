puts "Super Add and Average!"

numbers = []

loop do
  puts "What are your numbers?"
  number = gets.chomp

  if number == ""
    puts "Thank you for your numbers! :)"
    break
  end

  numbers << number.to_f
end

total = 0
count = 0

loop do
  total = total + numbers[count]
  count = count + 1
  if count >= numbers.length
    break
  end
end

avg = total / (numbers.length)

puts "The sum total of your numbers are #{total}. The average is #{avg}."
