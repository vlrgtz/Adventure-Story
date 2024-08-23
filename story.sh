#!/bin/bash

# Start the adventure by introducing the player to the travel scenario
echo "Welcome to Your Travel Adventure!"
echo "You have just landed in a foreign country and have a day to explore."
echo "You have two options: You can either visit the famous city museum or take a trip to the nearby beach."
echo "Which activity will you choose? Type 'museum' or 'beach'."
read choice  # Capture the player's initial decision on which activity to pursue

# Main loop to handle the player's choices and control the flow of the travel adventure
while true; do
    if [[ $choice == "museum" ]]; then  # If the player selects the museum visit
        echo "You chose to visit the city museum."
        echo "The museum has an exhibit on ancient artifacts and a modern art gallery."
        echo "Which exhibit would you like to explore? Type 'artifacts' or 'art'."
        read choice  # Capture the player's decision on which exhibit to explore

        if [[ $choice == "artifacts" ]]; then  # If the player decides to explore ancient artifacts
            echo "You explore the ancient artifacts exhibit and discover rare, historical treasures!"
            echo "While you're admiring a priceless artifact, a curator offers to show you a hidden section of the museum."
            echo "Do you want to accept the offer? Type 'yes' or 'no'."
            read choice  # Capture the player's decision on whether to accept the curator's offer

            if [[ $choice == "yes" ]]; then  # If the player accepts the curator's offer
                echo "The curator takes you to a private collection of artifacts never before seen by the public!"
                echo "You're amazed by the exclusive experience. Congratulations, you've had an unforgettable day!"
                break  # Exit the loop as the adventure concludes positively
            elif [[ $choice == "no" ]]; then  # If the player declines the curator's offer
                echo "You politely decline and continue exploring the rest of the museum."
                echo "As you leave, you feel satisfied with the knowledge you've gained today."
                echo "Your museum visit ends on a high note."
                break  # Exit the loop as the adventure concludes positively
            else
                echo "Invalid choice. Please type 'yes' or 'no'."  # Prompt the player to provide valid input
            fi

        elif [[ $choice == "art" ]]; then  # If the player decides to explore the modern art gallery
            echo "You walk through the modern art gallery, where each piece challenges your perception of reality."
            echo "A famous artist notices your interest and invites you to an exclusive after-hours event."
            echo "Do you want to attend the event? Type 'yes' or 'no'."
            read choice  # Capture the player's decision on whether to attend the event

            if [[ $choice == "yes" ]]; then  # If the player decides to attend the after-hours event
                echo "You attend the event and mingle with art enthusiasts and creators."
                echo "You make valuable connections and enjoy a unique experience. Congratulations, you've had a great day!"
                break  # Exit the loop as the adventure concludes positively
            elif [[ $choice == "no" ]]; then  # If the player decides not to attend the event
                echo "You decide to leave the museum after enjoying the art exhibit."
                echo "You feel inspired by the creativity you've witnessed today."
                echo "Your day at the museum concludes peacefully."
                break  # Exit the loop as the adventure concludes safely
            else
                echo "Invalid choice. Please type 'yes' or 'no'."  # Prompt the player to provide valid input
            fi

        else
            echo "Invalid choice. Please type 'artifacts' or 'art'."  # Handle invalid input for museum exhibits
        fi

    elif [[ $choice == "beach" ]]; then  # If the player selects the beach trip
        echo "You chose to visit the nearby beach."
        echo "At the beach, you can either relax under the sun or participate in a beach treasure hunt."
        echo "What would you like to do? Type 'relax' or 'treasure'."
        read choice  # Capture the player's decision on the beach activity

        if [[ $choice == "relax" ]]; then  # If the player decides to relax on the beach
            echo "You find a comfortable spot on the sand and relax with the sound of the waves."
            echo "A local vendor offers you a refreshing tropical drink. Do you want to buy one? Type 'yes' or 'no'."
            read choice  # Capture the player's decision on whether to buy the drink

            if [[ $choice == "yes" ]]; then  # If the player buys the tropical drink
                echo "You enjoy the refreshing drink as you soak up the sun. It's the perfect way to unwind!"
                echo "Congratulations, you've had a wonderfully relaxing day at the beach!"
                break  # Exit the loop as the adventure concludes positively
            elif [[ $choice == "no" ]]; then  # If the player decides not to buy the drink
                echo "You decline the offer and continue to relax in the peaceful environment."
                echo "You feel completely recharged after your day at the beach."
                echo "Your beach day ends on a serene note."
                break  # Exit the loop as the adventure concludes positively
            else
                echo "Invalid choice. Please type 'yes' or 'no'."  # Prompt the player to provide valid input
            fi

        elif [[ $choice == "treasure" ]]; then  # If the player decides to participate in the treasure hunt
            echo "You join the beach treasure hunt and receive a map with clues leading to hidden treasures."
            echo "Following the first clue, you arrive at a rocky outcrop where you find an old, locked chest."
            echo "Do you want to try to open the chest or search for the key first? Type 'open' or 'search'."
            read choice  # Capture the player's decision on how to approach the chest

            if [[ $choice == "open" ]]; then  # If the player tries to open the chest immediately
                echo "You attempt to open the chest, but it's locked tight."
                echo "Without the key, you can't access its contents."
                echo "Do you want to keep trying or give up and continue the hunt? Type 'try' or 'give up'."
                read choice  # Capture the player's decision on whether to keep trying or give up

                if [[ $choice == "try" ]]; then  # If the player decides to keep trying to open the chest
                    echo "After several attempts, you manage to open the chest using a makeshift tool."
                    echo "Inside, you find a collection of beautiful seashells and a note congratulating you on your persistence."
                    echo "It's a symbolic treasure that celebrates your determination."
                    echo "Congratulations, you've completed the treasure hunt with a rewarding experience!"
                    break  # Exit the loop as the adventure concludes positively
                elif [[ $choice == "give up" ]]; then  # If the player decides to give up on the chest
                    echo "You decide to give up on the chest and continue searching for other clues."
                    echo "Following the next clue, you discover a hidden cove with stunning views."
                    echo "You spend the rest of the day enjoying the beauty of the cove."
                    echo "Your treasure hunt ends with a sense of discovery and tranquility."
                    break  # Exit the loop as the adventure concludes peacefully
                else
                    echo "Invalid choice. Please type 'try' or 'give up'."  # Prompt the player to provide valid input
                fi

            elif [[ $choice == "search" ]]; then  # If the player decides to search for the key first
                echo "You decide to search the surrounding area for the key."
                echo "After some exploration, you find a weathered key hidden under a pile of seashells."
                echo "Returning to the chest, you use the key to open it."
                echo "Inside, you discover a small pouch filled with local currency and a thank-you note."
                echo "It's a thoughtful gesture from the organizers of the treasure hunt."
                echo "Congratulations, you've successfully completed the treasure hunt and earned a reward!"
                break  # Exit the loop as the adventure concludes positively
            else
                echo "Invalid choice. Please type 'open' or 'search'."  # Prompt the player to provide valid input
            fi

        else
            echo "Invalid choice. Please type 'relax' or 'treasure'."  # Handle invalid input for beach activities
        fi

    else
        echo "Invalid choice. Please type 'museum' or 'beach'."  # Handle invalid initial input
        read choice  # Prompt the player to choose again
    fi
done
