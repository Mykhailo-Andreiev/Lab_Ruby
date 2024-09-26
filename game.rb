VARIANTS = { 1 => "rock", 2 => "paper", 3 => "scissors", 4 => "exit" }

def get_user_choice
    puts "\n1 - rock, 2 - paper, 3 - scissors, 4 - exit\nEnter your choice: "
    user_input = gets.chomp.to_i
  
    case user_input
    when 1, 2, 3
        user_input  
    when 4
        user_input 
    else
        puts "Invalid choice. Please enter 1, 2, 3, or 4."
        get_user_choice
    end
end
  

def get_bot_choice
    VARIANTS[rand(1..3)]
end


def winner(user_choice, bot_choice)
    if user_choice == bot_choice
        puts "It's a tie!"
    elsif (user_choice == "rock" && bot_choice == "scissors") || (user_choice == "paper" && bot_choice == "rock") || (user_choice == "scissors" && bot_choice == "paper")
        puts "You win!"
    else
        puts "Bot wins!"
    end
end


def play
    
  puts "\nSTART"

    loop do
        user_input = get_user_choice
        break if user_input == 4

        user_choice = VARIANTS[user_input]
        bot_choice = get_bot_choice

        puts "\nYour choice: #{user_choice}"
        puts "Bot's choice: #{bot_choice}"

        winner(user_choice, bot_choice)
    end

    puts "\nEND"
end

play
