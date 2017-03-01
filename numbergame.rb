puts "

                                                     bbbbbbbb
                                                     b::::::b
                                                     b::::::b
                                                     b::::::b
                                                     b::::::b
nnnn  nnnnnnnn            mmmmmmm    mmmmmmm         b::::::bbbbbbbbb         rrrrr   rrrrrrrrr
n:::nn::::::::nn        mm:::::::m  m:::::::mm       b:::::::::::::::b       r::::rrr:::::::::r
n::::::::::::::nn      m::::::::::mm::::::::::m      b::::::::::::::::b      r:::::::::::::::::r
nn:::::::::::::::n     m::::::::::::::::::::::m      b:::::bbbbb:::::::b     rr::::::rrrrr::::::r
n:::::nnnn:::::::n     m:::::mmm::::::mmm:::::m      b:::::b    b::::::b      r:::::r     r:::::r
n::::n    n::::::n     m::::m   m::::m   m::::m      b:::::b     b:::::b      r:::::r     rrrrrrr
n::::n    n::::::n     m::::m   m::::m   m::::m      b:::::b     b:::::b      r:::::r
n::::n    n::::::n     m::::m   m::::m   m::::m      b:::::b     b:::::b      r:::::r
n::::n    n::::::n     m::::m   m::::m   m::::m      b:::::bbbbbb::::::b      r:::::r
n::::n    n::::::n     m::::m   m::::m   m::::m      b::::::::::::::::b       r:::::r
n::::n    n::::::n     m::::m   m::::m   m::::m      b:::::::::::::::b        r:::::r
nnnnnn    nnnnnnnn     mmmmmm   mmmmmm   mmmmmm      bbbbbbbbbbbbbbbb         rrrrrrr

"
# Pick random number
r_number = rand(0..100)

def ask_user_for_info (question)
  puts "#{question}: "
  gets.chomp
end

def reply response
  puts "*" * response.length
  puts response
  puts "*" * response.length

end
# ask user to guess a number
puts "A random number between 0-100 has been chosen!"

puts "

"

# create a list of guesses
number_list = []

# loop prompt to recieve guesses
loop do

  number = ask_user_for_info ("Guess what it is")
  number_f1 = number.to_f

  if number_f1 == r_number
    puts "
    🎊  🎉  🎊  🎉  🎊  🎉  🎊  🎉
    🎉   Congratulations! 🎊
    🎊  🎉  🎊  🎉  🎊  🎉  🎊  🎉

  You guessed the correct number!"
    break
  end

  if number_f1 >= r_number
    number_f2 = number_f1
    reply "Nope, too high. If this were The Price is Right you would have lost, but luckily for you it's not...... So try again!"
  end

  if number_f1 <= r_number
    number_f2 = number_f1
    reply "No, too low. Keep going!"
  end

  number_list << number_f2

  if number_list.length >= 5
    puts "

🎉  🎊  🎉  🎊  🎉  🎊  🎉
🎊     YOU SUCK!   🎊
🎉  🎊  🎉  🎊  🎉  🎊  🎉

Just kidding, but you did guess too
many times. You'll have to try again.

"
    puts "By the way, the number was: "
    p r_number
    play_again = ask_user_for_info ("Would you like to play again?")
    case play_again
    when "n","n.","no","no.","nope","nope.","nO","nO.","N","N.","NO","NO.","NOPE","NOPE.","No","No."
      break
    when "y","y.","yes","yes.","Yes","YES","YES."
      puts "Well too bad. I haven't figured that part out yet."
      break
    end
  end

end
