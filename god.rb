
@people = []

def gather_information (data)
  puts "#{data}"
  gets.chomp
end

class Person
  attr_accessor :name, :phone, :address

  def initialize (name, phone, address)
    @name = name
    @phone = phone
    @address = address
  end
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
      index = 0
      loop do

        if index >= @people.length
          puts "NEVER FOUND EM"
          break
        end

        person = @people[index]

        if searched_name == person.name
          puts "Found em! #{person.name}"
          # TODO: Print a nice result with all the info

          break
        end

        index = index + 1
      end

    when "a", "a.", "add", "add.", "A", "A.", "Add", "Add.", "ADD", "ADD."
      name = gather_information ("What is their name?")
      phone = gather_information ("What is their phone number?")
      address = gather_information ("What is their address?")
      person = Person.new(name, phone, address)
      @people << person
      puts "The user has been added!"

    when "d", "d.", "delete", "delete.", "D", "D.", "Delete", "Delete.", "DELETE", "DELETE."
      break
    when "x", "x.", "exit", "exit.", "X", "X.", "Exit", "Exit.", "EXIT", "EXIT."
      break
    else
      puts "I didn't understand, type what you would like to do (Search/Add/Delete/Exit)"
  end



end
