
#Default Gold Count
$my_gold = 100

$quest_array = ['1. Dragon Quest', '2. Princess Quest', '3. Rebellion Quest', '4. Giant Quest']

#Game Introduction
def intro 
    puts "Welcome To Alpha Quest!"
    puts "\n"
    puts "A game where YOU are the NPC!"
    puts "You are a quest-giver for the Kingdom of P. You have access to a limited supply of gold. You must complete needed quests by hiring adventurers. Selecting the right adventurer for the quest will win you the game."
    puts "Different adventurers will have different skills and proficiencies along with different gold costs to hire them."
    "\n"
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




def quest_select

    if $my_gold <= 0
        puts "You have squandered the finances of the kingdom"
        puts "You shuffle into the throne room to meet your King"
        puts "He looks at you with an angry scowl"
        p "You have failed me for the last time, you fool! OFF WITH HIS HEAD"
        puts "       #     # ####### #     #    ######  ### ####### ######  
        #   #  #     # #     #    #     #  #  #       #     # 
         # #   #     # #     #    #     #  #  #       #     # 
          #    #     # #     #    #     #  #  #####   #     # 
          #    #     # #     #    #     #  #  #       #     # 
          #    #     # #     #    #     #  #  #       #     # 
          #    #######  #####     ######  ### ####### ######  "
    elsif $quest_array == ['1. Dragon Quest (Completed)', '2. Princess Quest (Completed)', '3. Rebellion Quest (Completed)', '4. Giant Quest (Completed)']
        puts "You have saved the entire kingdom through the power of delegation, you are now ready for middle management. Congratulations!"
        puts "You completed the game with #{$my_gold} gold remaining. Good Job!"
    else
        puts "\n"
        puts "Available Quests"
        puts "\n"
        puts $quest_array
        puts "\n"
        puts "You have #{$my_gold} gold remaining"
        puts "\n"
        puts "What quest do you want?"
        quest = gets.chomp
        if quest == "1"
            dragon_quest_intro
        elsif quest == "2"
            princess_quest_intro
        elsif quest == "3"
            rebellion_quest_intro
        elsif quest == "4"
            giant_quest_intro
        end
    end
end


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
    puts "Do you want to ask more about the quest, ask about the adventurers, or make your choice?"
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
        puts "Merlin the blind wizard is blah blah blah and would cost 10 gold"
        puts "\n"
        puts "John the Righteous blah blah blah and would cost 5 cold"
        puts "\n"
        puts "You could always send the court jester, that guy will do anything for a gold piece"
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



def princess_quest_intro
    if $quest_array[1] == "1. Save the Princess (Completed)"
        puts "You have rescued the Princess from the clutches of her reptilian captor, great job"
        quest_select
    else
    puts "\n"
    puts "The princess is in another castle! Again..."
    puts "\n"
    puts "A reptilian beast has apparently kidnapped the princess. That's the third time this year!"
    puts "You'll need to find some brave adventurer to go track her down and get her back, and probably install a security system in her room to prevent further kidnappings"
    puts "There are three adventurers who will take this quest"
    puts "Garreth, the loyal Knight, Sir Alonse de Florence, or you could always send the plumber (but why on earth would you do that?)"
    puts "\n"
    princess_quest_choices
    end
end

def princess_quest_choices
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
        puts "The princess seems to get kidnapped every other week, and it's always the same guy who does it. Not sure why we never took care of him, but that's not your concern. Apparently she's being held captive in a castle that uses sewers as their main method of transportation"
        puts "\n"
        puts "\n"
        princess_quest_choices
    elsif player_choice == "2"
        puts "\n"
        puts "Geralt. He's a bit rough around the edges but at this point he's become a professional in monster slaying. He always gets the job done, on time, but demands a hefty fee"
        puts "\n"
        puts "Sir Alonse de Florence is from a neighboring kingdom. We don't know much about him other than he really wants to marry a princess. Honestly might keep her from getting stolen again in the future. "
        puts "\n"
        puts "If you're tight on funds, you could always send the plumber. He doesn't really have any weaponry to speak of. But he can jump really high. He also has an awesome moustache, if that counts for anything"
        puts "\n" 
        princess_quest_choices
    elsif player_choice == "3"
        puts "1. Garreth, the loyal knight (50 gold)"
        puts "\n"
        puts "2. Sir Alonse de Florence (30 gold)"
        puts "\n"
        puts "3. Send the Plumber with an awesome 'stache, for 10 gold" 
        puts "\n"
        player_choice1 = gets.chomp
            if player_choice1 == "1"
                puts "The swordsman Geralt storm the castle, and with a stunning display of swordsmanship, beheads the foul fiend that has taken the princess. He returns to the kingdom, with princess in tow and the beast's head held as a trophy"
                $my_gold -= 50
                $quest_array[1] = "2. Princess Quest (Completed)"
                puts "\n"
                quest_select
            elsif player_choice1 == "2"
                puts "Sir Alonse de Florence rides off into the sunset, complaining about unfair working conditions and poor pay. After some time, the princess returns on her own, apparently she just needed some space to think about life."
                $my_gold -= 30
                puts "\n"
                $quest_array[1] = "2. Princess Quest (Completed)"
                puts "\n"
                quest_select
            elsif player_choice1 == "3"
                puts "To everyone's surprise, you send off the plumber with nothing but the boots on his feet and some sturdy overalls. He must have grown up as an acrobat, as his ability to jump and navigate complex sewer systems leads him straight to the princess. He returns, yelling 'yahoo!' and returning the princess. He returns to his work, keeping the waste system of the kingdom running smoothly"
                puts "The jester returns with some of the dragon's hoard, you get 50 gold"
                $my_gold -= 10
                puts "\n"
                $quest_array[1] = "2. Princess Quest (Completed)"
                puts "\n"
                quest_select
            end
    else
    end
end


def rebellion_quest_intro
    if $quest_array[2] == "1. Rebellion Quest (Completed)"
        puts "The town square has been purged of the disorderleys. The kingdom has been restored to its glory thanks to you adventurer"
        quest_select
    else
    puts "\n"
    puts "A local uprising has taken place in the town square"
    puts "There are three adventurers who will take this quest"
    puts "Dore de Dumble, the wizard, Peter Shortsword, a 'noble' paladin... or you could send the court Jester"
    puts "\n"
    rebellion_quest_choices
    end
end
def rebellion_quest_choices
    puts "Do you want to ask more about the quest, ask about the adventurers, or make your choice?"
    puts "\n"
    puts "1. Ask about the quest"
    puts "2. Ask about the Adventurers"
    puts "3. Make your choice"
    puts "\n"
    puts "\n"
    player_choice = gets.chomp
    if player_choice == "1"
        puts "\n"
        puts "Mobs are unpredictable and are best dealt with through strength and authority O===[====================-"
        puts "\n"
        puts "\n"
        rebellion_quest_choices
    elsif player_choice == "2"
        puts "\n"
        puts "Dore de Dumble is costs (10 gold)"
        puts "\n"
        puts "Peter Shortsword costs (5 gold)"
        puts "\n"
        puts "You could always send the court jester, that guy will do anything for a gold piece"
        puts "\n"
        rebellion_quest_choices
    elsif player_choice == "3"
        puts "1. Send Merlin the blind wizard (10 gold)"
        puts "\n"
        puts "2. Send Peter Shortsword (5 gold)"
        puts "\n"
        puts "3. Send the court Jester, for (1 gold)"
        puts "\n"
        player_choice1 = gets.chomp
            if player_choice1 == "1"
                puts "Dore de Dumble goes to police the mob, his spells are effective, but is attacked from behind and is mortally wounded"
                $my_gold -= 10
                $quest_array[2] = "3. Rebellion Quest (Completed)"
                puts "\n"
                quest_select
            elsif player_choice1 == "2"
                puts "Peter Shortsword goes to impose the king's law and restores order swiftly using his iron and strength"
                puts "You earn an additional 5 gold for swiftly balancing the kingdom."
                $my_gold += 15
                puts "\n"
                $quest_array[2] = "3. Rebellion Quest (Completed)"
                puts "\n"
                quest_select
            elsif player_choice1 == "3"
                puts "You've chosen to send the Jester, he's effective until he takes heckling to the knee. His ego is harshly damaged"
                puts "The jester loses his confidence and will have to be replaced. You lose extra gold for mismanaging the kingdoms treasury"
                $my_gold -= 41
                puts "\n"
                $quest_array[2] = "3. Rebellion Quest (Completed)"
                puts "\n"
                quest_select
            end
    else
    end
end


def giant_quest_intro
    if $quest_array[3] == "4. Giant Quest (Completed)"
        puts "You have saved the kingdom from the Giant...but also destroyed the hillside in the process. you can regrow the trees...but it'll cost you some of your gold."
        quest_select
    else
    puts "\n"
    puts "
       _             _   
      (_)           | |  
  __ _ _  __ _ _ __ | |_ 
 / _` | |/ _` | '_ \| __|
| (_| | | (_| | | | | |_ 
 \__, |_|\__,_|_| |_|\__|
  __/ |                  
 |___/                   "
    puts "A giant destroyed the only bridge out of the kingdom. The giant is roaming the local hillside."
    puts "There are three adventurers who will take this quest"
    puts "Stewart the Mighty, the bravest warrior, P the hashbrown, or Peggy the drunk Pirate"
    puts "\n"
    giant_quest_choices
    end
end

def giant_quest_choices
    puts "Do you want to ask more about the quest, ask about the adventurers, or make your choice?"
    puts "\n"
    puts "1. Ask about the quest"
    puts "2. Ask about the Adventurers"
    puts "3. Make your choice"
    puts "\n"
    puts "\n"
    player_choice = gets.chomp
    if player_choice == "1"
        puts "\n"
        puts "Giants are large in size, but are notorious for having weak feet.."
        puts "\n"
        puts "\n"
        giant_quest_choices
    elsif player_choice == "2"
        puts "\n"
        puts "1. Stewart the Mighty is a small mouse but, is very brave and takes a high price of 30 gold"
        # puts ""


        puts "\n"
        puts "2. P the hashbrown walks very loudly, so stealth is not an option and is fair and only wants 15 gold"
        puts "\n"
        puts "3. Peggy the Pirate is usually drunk but, excellent in combat and is very greedy and wants 40 gold"
        puts "\n" 
        giant_quest_choices
    elsif player_choice == "3"
        puts "1. Send Stewart the Mighty (30 gold)"
        puts "\n"
        puts "2. P the hashbrown (15 gold)"
        puts "\n"
        puts "3. Peggy the Pirate (40 gold)" 
        puts "\n"
        player_choice1 = gets.chomp
            if player_choice1 == "1"
                puts "           
                 ) _     _
                ( (^)-~-(^)
            __,-.\_( 6 6 )__,-.___
              'M'   \   /   'M'
            hjw      >o<"
                puts "Stewart the Mighty yells at the top of his lungs but, the Giant does not hear or see Stewart. Stewart cuts down the Giant from beneath his feet and is victorious!"
                $my_gold -= 30
                $quest_array[3] = "4. Giant Quest (Completed)"
                puts "\n"
                quest_select
            elsif player_choice1 == "2"
                puts " P the hashbrown falls apart in battle...the Giant eats the crumbs and laughs as he walks away unphased."
                $my_gold -= 15
                puts "\n"
                $quest_array[3] = "4. Giant Quest (Completed)"
                puts "\n"
                quest_select
            elsif player_choice1 == "3"
                puts "Peggy the Pirate stumbles out towards the Giant on his wooden peg leg...too drunk to fight. The Giant bribes Peggy to leave him alone. Peggy accepts and goes back to the tavern."
                puts "Peggy lies to you and says he defeated the Giant and steals 10 coins"
                $my_gold -= 50
                puts "\n"
                $quest_array[3] = "4. Giant Quest (Completed)"
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