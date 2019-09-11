module ShowList
    class class 
        
        def start

            puts "Hey welcome to my new BLANK program"
            @input = nil
            menu
            while @input != "exit" && @input != "quit"
                get_input(
                    valid_choice: ["1", "2", )
                if @input == "menu"
                    menu
                elsif @input == "1"
                    puts "Prints list of shows"
                elsif @input == "2"
                    puts "Prints list of Networks"
                elsif @input == "exit" || @input == "quit"
                else
                    puts "whoops try again"
                end 
            end
        end

        def menu 
            puts <<-MENU
            1. List Shows
            2. List Networks
            or type "exit" or "quit" at any time to leave the program.
            MENU
        end
        
        def get_input(option)
            @input = gets.strip
            return if @input == "exit" || @input == "quit"
            puts error_message unless valid_choice.include?(@input)
            @input

        end
        def print_shows
            Show.all.each.with_index(1) do |show|
                puts "#{index}. #{show.name}"
            end
            prompt_for_show_choice
        end

        def prompt_for_show_choice
            @input = get.chomp
            # make sure that it's valid input
            @index = @input.to_i -1

            puts Show.all[@input.to_i - 1].summary
        end
    end
end