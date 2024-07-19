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

def caesar_cipher(text, key, case_of_letters_of_text)
  alphabets = ("a".."z").to_a
  letters_of_text = text.split("")
  ciphered_text = []

  letters_of_text.each do |letter|
    if alphabets.include?(letter)
      index_of_letter = alphabets.index(letter)
      count = 0
      while count < key do
        if index_of_letter == 25
          index_of_letter = 0
        else
          index_of_letter += 1
        end
        count += 1
      end
      ciphered_text.push(alphabets[index_of_letter])
    else
      ciphered_text.push(letter)
    end
  end

	set_correct_case(ciphered_text, case_of_letters_of_text)
end

puts caesar_cipher(text, key, case_of_letters_of_text)