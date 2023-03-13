
#Default Gold Count
$my_gold = 100

$quest_array = ['1. Dragon Quest']

#Game Introduction
def intro 
    puts "Welcome To Alpha Quest!"
    puts "A game where YOU are the NPC!"
    puts "You are a quest-giver for the Kingdom of P. You have access to a limited supply of gold. You must complete needed quests by hiring adventurers. Selecting the right adventurer for the quest will win you the game."
    puts "Different adventurers will have different skills and proficiencies along with different gold costs to hire them."
end



#Game Confirmation if no selected
def rules2
    puts "When asked a question enter ONLY the letter in parenthesis."
    puts "Do you understand NOWWWWWWW?"
    puts "Press (y) for yes or (n) for no:"
    user_understand = gets.chomp
    if user_understand == 'y'
        rules
    else 
        puts "Please put on your glasses, read the docs better."
    end
end

#Character Name
def character_select
    #Array for possibly titles, blank space before each title
    title_array = [' The Wench', ' The Pious', ' The Lame', ' The Drunk', ' The Blind']

    puts "What is your name?"
    #Randomize titles from the title array, concats the input value with randomized title
    name = gets.chomp + title_array[rand(title_array.length)]
    p "Your name is #{name}"
    #Add in possible titles
end

#Game Rules
def rules
    puts "Games Rules"
    puts "In this game, you will be sometimes be given choices to make. You can select a choice by inputting the character in parenthesis."
    puts "Do you understand?"
    puts "Press (y) for yes or (n) for no:"
    user_understand = gets.chomp
    if user_understand == 'y'
            character_select
    else
           rules2
    end
end



#Quest selection
#print you went to the throne room and you have this much gold
#User shown list of quests
#Array of quests to select
#Each quest is at an index
#user prompted with which quest to select
#selects quest 1 (adventurer info given for quest), then does quest, once done, array gets updated with value being completed
#when user prompted with available quests, quest 1 will be shown as completed



def quest_select
    

    puts "Available Quests"
    puts $quest_array
    puts "You have #{$my_gold} gold remaining"
    puts "What quest do you want?"
    quest = gets.chomp
    if quest == "1"
        dragon_quest_intro
    elsif quest == "2"
         p_quest
    elsif quest == "3"
        g_quest
    end
end


# def dragon_quest
#     puts "A local dragon is attacking a nearby village."
#     puts " There are three adventurers who will take this quest"
#     puts " Merlin, the blind wizard, John the Righteous, a 'noble' paladin... or you could send the court Jester"
#     puts "Do you want to ask more about the (q)uest, ask about the (a)dventurers, or (m)ake your choice?"
#     player_choice = gets.chomp
#     if player_choice == "q" || player_choice == "Q"
#         puts "Dragons are known to be very resistant to most forms of attack, but can be taken down by magic"
#         puts "Would you like to ask about the (a)dventurers, or (m)ake your choice?"
#         player_choice = gets.chomp
#         if player_choice == "a" || player_choice || "A"
#             puts "(M)erlin the blind wizard is blah blah blah and would cost 10 gold"
#             puts "John the (R)ighteous blah blah blah and would cost 5 cold"
#             puts "You could always send the court (j)ester, that guy will do anything for a gold piece"
#             puts "Who would you like to send?"
#             player_choice == gets.chomp
#             if player_choice == "M" || "m"
#                 puts "Merlin the blind goes to fight the dragon, he can't see, but you don't need to see to cast Fireball, the dragon is defeated"
#                 $my_gold -= 10
#                 $quest_array[0] = "Dragon Quest (Completed)"
#             elsif player_choice == "r" || "R"
#                 puts "John the right"
#             end

#         end
#     elsif player_choice == "a" || "A"
#         puts "(M)erlin the blind wizard is blah blah blah and would cost 10 gold"
#         puts "John the (R)ighteous blah blah blah and would cost 5 cold"
#         puts "You could always send the court (j)ester, that guy will do anything for a gold piece"
#         puts "Would you like to ask about the (q)uest or make your (c)hoice?"
#             player_choice = gets.chomp
#             if player_choice == "q" || "Q"

#             end
#     end
# quest_select
# end

def dragon_quest_intro
    if $quest_array[0] == "1. Dragon Quest (Completed)"
        puts "You have saved the village from the Dragon through the power of delegation, great Job!"
        quest_select
    else
    puts "\n"
    puts "A local dragon is attacking a nearby village."
    puts "There are three adventurers who will take this quest"
    puts "Merlin, the blind wizard, John the Righteous, a 'noble' paladin... or you could send the court Jester"
    puts "\n"
    dragon_quest_choices
    end
end

def dragon_quest_choices
    puts "Do you want to ask more about the (q)uest, ask about the (a)dventurers, or (m)ake your choice?"
    puts "\n"
    puts "1. Ask about the quest"
    puts "2. Ask about the Adventurers"
    puts "3. Make your choice"
    puts "\n"
    puts "\n"
    player_choice = gets.chomp
    if player_choice == "1"
        puts "\n"
        puts "Dragons are known to be very resistant to most forms of attack, but can be taken down by magic"
        puts "\n"
        puts "\n"
        dragon_quest_choices
    elsif player_choice == "2"
        puts "\n"
        puts "(M)erlin the blind wizard is blah blah blah and would cost 10 gold"
        puts "\n"
        puts "John the (R)ighteous blah blah blah and would cost 5 cold"
        puts "\n"
        puts "You could always send the court (j)ester, that guy will do anything for a gold piece"
        puts "\n" 
        dragon_quest_choices
    elsif player_choice == "3"
        puts "1. Send Merlin the blind wizard (10 gold)"
        puts "\n"
        puts "2. Send John the Righteous (5 gold)"
        puts "\n"
        puts "3. Send the court Jester, for 1 gold" 
        puts "\n"
        player_choice1 = gets.chomp
            if player_choice1 == "1"
                puts "Merlin the blind goes to fight the dragon, he can't see, but you don't need to see to cast Fireball, the dragon is defeated"
                $my_gold -= 10
                $quest_array[0] = "1. Dragon Quest (Completed)"
                puts "\n"
                quest_select
            elsif player_choice1 == "2"
                puts "John the Righteous goes to proselytize the Dragon, while he succeeds, you need to tithe 30 more gold to the church"
                $my_gold -= 35
                puts "\n"
                $quest_array[0] = "1. Dragon Quest (Completed)"
                puts "\n"
                quest_select
            elsif player_choice1 == "3"
                puts "You send the court jester, that was a horrible idea, but it totally worked somehow. Apparently dragons are allergic to poor comedy"
                puts "The jester returns with some of the dragon's hoard, you get 50 gold"
                $my_gold += 49
                puts "\n"
                $quest_array[0] = "1. Dragon Quest (Completed)"
                puts "\n"
                quest_select
            end
    else
    end
end




# Pathway for the game:

intro # Gives intro to the game

rules #Gives rules of the game and how to play -> Sends to character select method

quest_select