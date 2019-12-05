text = "Here's some text"

# def changeitup(string)
#     # string.gsub!(string[-4..-1], "bull")
#     # string.gsub!("text", "bull")
#     string.gsub!(/[x]/, "bull")
#     puts string
# end
 
# changeitup(text)



# def rolldice(guess)
#     answer = rand(3)
#     if answer == guess.to_i
#         puts "You were right!"
#     elsif answer > guess.to_i
#         puts "Through no fault of your own, beside your willingness to gamble, you were wrong; the answer was #{answer}"
#     elsif answer < guess.to_i
#         puts "Through no fault of your own, beside your willingness to gamble, you were wrong; the answer was #{answer}"
#     end
# end

# rolldice(gets.chomp)

# Convention: {/} is for a block that is on one line while do/end is for a block that spans multiple lines

#Classes
#Toss an attr_accessor in there
#initialize function instantiates an object of the class
#A Module can be included in Classes as a Mixin; can contain constants and functions. 

# module definition begins "module ______" like the good ol' "Class _____"

#enumerable classes must implement each
#comparable classes implement <=>; a <=> b returns -1 if a is greater, 1 if be is, and 0 if niether 
# .any? and .all? methods return true if the condition is met for ...any or all, respectively. 
# Generally, methods that end in "?" are to test something boolean

a = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
# puts a.inject(11) {|sum, i| sum + i}

# inject runs the block on each item of the array using that item as the first argument, and takes the result of the previous execution as the second argument

def prints_in_fours(array)
    set = []
    array.each do |digit| 
        if set.length < 4
            set << digit 
        end
        if set.length == 4 
            print set
            set = []
        end
    end
end

# prints_in_fours(a)

# file = File.open("afile.txt")

# # puts file.read
# puts File.read("afile.txt")
# puts "------------"
# file = File.open("afile.txt")
# puts file.readlines.map(&:chomp)
# # the above line doesn't seem to do anything unless you re-open the file by declaring it in the previous line
# file.close
# # TBH it seemed closed already; seems also like this is necessary if you don't use the block method, but since I didn't here, not sure what the implication is.
## the question was what the benefit of using a code block was for working with files; it seems implied that it closes the file for us, but the behavior of the above seems to contradict that.

# puts File.read("afile.txt").split #this one is nuts! Each word is its own line
# print File.read("afile.txt").split #...because splitting, obviously, makes strings into an array
# puts "------------"
# puts File.foreach("afile.txt") {|line| puts line}
# print File.foreach("afile.txt") {|line| puts line}

File.open("afile.txt", "a") {|file| file.write "\n#{Time.now} - User logged in\n"}
#the "a" flag is to append; be careful - the "w" flag for writing will overwrite everything in the file

# File.write("afile.txt", "\nThis is text inserted by the 'write' command", mode: "a")
# some file methods are .rename, .size, .exists?, .extname, .basename, .dirname, .directory?, .file?




# Dir.glob("*.rb") lists things; this works with all kinds of wildcard combinations
# other methods to use on directories are .pwd, .empty?, .exists?, .mkdir, 

# Day 3
# ..deals with more class modification
# Macros are module methods that do this. 