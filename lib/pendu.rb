require 'useless/wording'

class Pendu
   def start
      starting_sentence = "Hola Loco"
      sentence_array = starting_sentence.split("").map(&:downcase)
      accurate_count = sentence_array - [" "]
      final_sentence = starting_sentence.gsub(/[a-zA-Z]/, '_').split("")

      p "Let's play !"

      while sentence_array.count("") < accurate_count.count
       puts "Guess a letter:"
       guess = gets.downcase.chomp
       if sentence_array.include?(guess)
          letter_index = sentence_array.find_index(guess)
          sentence_array[letter_index] = ""
          final_sentence[letter_index] = guess
          puts "Correct! The sentence is now: #{final_sentence.join}"
       else
          puts "The letter: #{guess} is not in the sentence. Try again !"
       end
      end
      puts Wording.congrats
   end
end


