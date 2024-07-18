puts "Enter a text!"
text = gets.chomp

puts "Enter a number!"
key = gets.chomp.to_i

case_of_letters_of_text = []

def store_case_of_letters_of_text(text, case_of_letters_of_text)
	letters = text.split("")
	letters.each do |letter|
		if letter == letter.upcase
			case_of_letters_of_text.push("upcase")
		else
			case_of_letters_of_text.push("downcase")
		end
	end
end

store_case_of_letters_of_text(text, case_of_letters_of_text)