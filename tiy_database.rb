profiles = []

def gather_information (data)
  puts "#{data}"
end

loop do



  puts "




  Welcome! What would you like to do:



  Search - Search for a profile
  Add - Add a profile
  Delete - Delete a profile

  Exit - Exit the program




  (Search/Add/Delete/Exit)?




  "
  response = gets.chomp

  case response
    when "s", "s.", "search", "search.", "S", "S.", "Search", "Search.", "SEARCH", "SEARCH."
      puts "Who's profile would you like to see?"
      searched_name = gets.chomp


      break


    when "a", "a.", "add", "add.", "A", "A.", "Add", "Add.", "ADD", "ADD."
      profile = []
      gather_information ("What is their name?")
      profile << gets.chomp
      gather_information ("Phone number")
      profile << gets.chomp
      gather_information ("Address")
      profile << gets.chomp
      gather_information ("Position (e.g. Instructor, Student, TA, Campus Director)")
      profile << gets.chomp
      gather_information ("Salary")
      profile << gets.chomp
      gather_information ("Slack Account")
      profile << gets.chomp
      gather_information ("Github Account")
      profile << gets.chomp
      puts "The user has been added!"
      p profile
      profiles << profile


    when "d", "d.", "delete", "delete.", "D", "D.", "Delete", "Delete.", "DELETE", "DELETE."

      break


    when "x", "x.", "exit", "exit.", "X", "X.", "Exit", "Exit.", "EXIT", "EXIT."
      break
    else
      puts "I didn't understand, type what you would like to do (Search/Add/Delete/Exit)"
  end



end

p profiles
