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

text.downcase!

def set_correct_case(ciphered_text, case_of_letters_of_text)
	ciphered_text_letters_with_correct_case = []
	ciphered_text.each_with_index do |letter, index|
		if case_of_letters_of_text[index] == "upcase"
			ciphered_text_letters_with_correct_case.push(letter.upcase)
		else
			ciphered_text_letters_with_correct_case.push(letter.downcase)
		end
	end
	ciphered_text_letters_with_correct_case.join
end