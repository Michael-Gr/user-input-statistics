@people = []

def get_info (data)
  print "#{data} "
  gets.chomp
end

class Person
  attr_accessor :name, :phone, :address, :position, :salary, :slack, :github

  def initialize (name, phone, address, position, salary, slack, github)
    @name = name
    @phone = phone
    @address = address
    @position = position
    @salary = salary
    @slack = slack
    @github = github
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
      searched_name = get_info ("Who's profile would you like to see?")
      index = 0
      loop do

        if index >= @people.length
          puts "That person does not have a profile."
          break
        end

        person = @people[index]

        if searched_name == person.name
          puts "

Found #{person.name}

"
          puts "
************************************************

#{person.name}'s

            phone is     :   #{person.phone}

            address is   :   #{person.address}

            position is  :   #{person.position}

            salary is    :   #{person.salary}

            slack is     :   #{person.slack}

            github is    :   #{person.github}


************************************************
"

          break
        end

        index = index + 1
      end

    when "a", "a.", "add", "add.", "A", "A.", "Add", "Add.", "ADD", "ADD."
      name = get_info ("What is their name?")
      phone = get_info ("What is their phone number?")
      address = get_info ("What is their address?")
      position = get_info ("What is their position?")
      salary = get_info ("What is their salary?")
      slack = get_info ("What is their slack?")
      github = get_info ("What is their github?")
      person = Person.new(name, phone, address, position, salary, slack, github)
      @people << person
      puts "The user has been added!"

    when "d", "d.", "delete", "delete.", "D", "D.", "Delete", "Delete.", "DELETE", "DELETE."
      delete_name = get_info ("Who's profile would you like to delete?")
      index = 0
      loop do
        if index >= @people.length
          puts "Couldn't find a matching profile."
          break
        end

        person = @people[index]

        if delete_name == person.name
          @people.delete(person)
          puts "The user has been deleted."
          break
        end

        index = index + 1
      end

    when "x", "x.", "exit", "exit.", "X", "X.", "Exit", "Exit.", "EXIT", "EXIT."
      break
    else
      puts "I didn't understand, type what you would like to do (Search/Add/Delete/Exit)"
  end



end
