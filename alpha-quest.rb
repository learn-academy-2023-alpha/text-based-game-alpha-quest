
#Default Gold Count
my_gold = 100

#Game Introduction
def intro 
    puts "Welcome To Alpha Quest!"
    puts "A game where YOU are the NPC!"
    puts "You are a quest-giver for the Kingdom of P. You have access to a limited supply of gold. You must complete needed quests by hiring adventurers. Selecting the right adventurer for the quest will win you the game."
    puts "Different adventurers will have different skills and proficiencies along with different gold costs to hire them."
end

intro

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
    title_array = [' The Wench', ' The Pious', ' The Lame', 'The Drunk', ' The Blind']

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

rules

#Quest selection
#print you went to the throne room and you have this much gold
#User shown list of quests
#Array of quests to select
#Each quest is at an index
#user prompted with which quest to select
#selects quest 1 (adventurer info given for quest), then does quest, once done, array gets updated with value being completed
#when user prompted with available quests, quest 1 will be shown as completed


# quest_array = ['(D)ragon Quest']

def dragon_quest
    puts "You win"
end

def quest_select
    quest_array = ['(D)ragon Quest']

    puts "Available Quests"
    puts quest_array
    puts "What quest do you want?"
    quest = gets.chomp
    if quest == 'D' || quest == 'd'
        dragon_quest
    elsif quest == 'P' || quest == 'p'
         p_quest
    elsif quest == 'G' || quest == 'g'
        g_quest
    end
end

quest_select





