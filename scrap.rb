text = "Here's some text"

def changeitup(string)
    # string.gsub!(string[-4..-1], "bull")
    # string.gsub!("text", "bull")
    string.gsub!(/[x]/, "bull")
    puts string
end
 
# changeitup(text)



def rolldice(guess)
    answer = rand(3)
    if answer == guess.to_i
        puts "You were right!"
    elsif answer > guess.to_i
        puts "Through no fault of your own, beside your willingness to gamble, you were wrong; the answer was #{answer}"
    elsif answer < guess.to_i
        puts "Through no fault of your own, beside your willingness to gamble, you were wrong; the answer was #{answer}"
    end
end

rolldice(gets.chomp)