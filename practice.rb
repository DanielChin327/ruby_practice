
# 1
# String Concatenation: Write a program that concatenates two strings provided by the user.

# puts "Type first string: "
# stringOne = gets.chomp.to_s
# puts "Type second string: "
# stringTwo = gets.chomp.to_s
# combined = stringOne + stringTwo
# print combined


# 2
# Basic Array Operations: Create an array containing five different types of fruits and print each one using a loop.

# fruits = ["apple", "banana", "orange", "watermelon", "grape"]

# fruits.each do |fruit|
#   puts fruit
# end


# 3
# Hash Creation: Define a hash with keys as different country names and values as their capital cities.
# countries = {Japan: "Tokyo", Korea: "Seoul", China: "Beijing"}
# puts countries

# 4
# Even or Odd: Ask the user to input a number and output whether the number is even or odd.

# puts "Give a number"
# userNumber = gets.chomp

# def numCheck(userNumber)
#   if userNumber.class != Integer
#     return "Not a number"
#   elsif userNumber % 2 == 0
#     return "even"
#   elsif userNumber % 2 != 0
#     return "odd"
#   end
# end

# puts numCheck(userNumber)


# def calculator (inputOne, inputTwo, action)
#   if action == "add"
#     return (inputOne + inputTwo)
#   elsif action == "sub"
#     return (inputOne - inputTwo)
#   elsif action == "mult"
#     return (inputOne * inputTwo)
#   elsif action == "div"
#     return (inputOne / inputTwo)
#   else
#     return "unrecognized input"
#   end
# end

# puts "What is first Num: "
#   inputOne = gets.chomp.to_i

# puts "What would you like to do? (add, sub, mult, div)"
#   action = gets.chomp.to_s

#   puts "What is second Num: "
#   inputTwo = gets.chomp.to_i

# puts calculator(inputOne, inputTwo, action)


# arr1 = [2,1,3,4,5,4,4,3,2,1,6,7,8,8,7,6,7,8,9,8,7,0,4,3,1,4,1,2,9,6,5,4,3]

# def frequency(array)
#   result = {}
#   array.each do |num|
#     if result.has_key?(num)
#       result[num] += 1
#     else
#       result[num] = 1
#     end
#   end
#   return result
# end

# puts frequency(arr1)

# def caseConverter(string)
#   split = string.split(' ')
#   result = split.map do |word|
#     word.capitalize
#   end
#   return result.join(' ')
# end

# puts caseConverter("hello there everyone.")


# choice = ['rock', 'paper', 'scissor']
# random_number = rand(3)
# computer_choice = choice[random_number]

# puts "rock, paper, scissor"
# player_choice = gets.chomp.to_s

# if player_choice == computer_choice
#   puts "Both players chose #{player_choice}. TIE."
# elsif player_choice == 'rock' && computer_choice == 'scissor'
#   puts "player chose #{player_choice}, comp chose #{computer_choice}. player wins"
# elsif player_choice == 'scissor' && computer_choice == 'paper'
#   puts "player chose #{player_choice}, comp chose #{computer_choice}. player wins"
# elsif player_choice == 'paper' && computer_choice == 'rock'
#   puts "player chose #{player_choice}, comp chose #{computer_choice}. player wins"
# else
#   puts "player chose #{player_choice}, comp chose #{computer_choice}. computer wins"
# end


# play_again = ''

# until play_again == 'n'

# player_score = 0
# bank_score = rand(16..21)

# answer = ''
# until answer == 'n'
# puts "\ncurrent hand: #{player_score}"
# puts "draw? (y/n)"
# answer = gets.chomp
# card_value = rand(1..11)
# if answer == 'y'
#   player_score += card_value
#   if player_score > 21
#     puts "Bust. Player Score: #{player_score}. (Dealer was #{bank_score})"
#     break
#   elsif player_score == 21
#     puts "Black Jack! Player Wins! Player Score: #{player_score}. (Dealer was #{bank_score})"
#     break
#   end
# end
# end

# puts "Player Score: #{player_score} / Dealer Score: #{bank_score}"

# if player_score > bank_score && player_score < 21
#   puts "player wins. player score: #{player_score}, bank score: #{bank_score}"
# elsif bank_score > player_score
#   puts "dealer wins. player score: #{player_score}, bank score: #{bank_score}"
# end

# puts "\nPlay Again? (y/n)"
# play_again = gets.chomp.to_s
# end



# def fizz_buzz(num)
#   counter = 0
#   array = []
#   until counter == num
#       counter += 1
#     if counter % 5 == 0 && counter % 3 == 0
#       array.push("FizzBuzz")
#     elsif counter % 5 == 0
#       array.push("Buzz")
#     elsif counter % 3 == 0
#       array.push("Fizz")
#     else
#       array.push(counter)
#     end
#   end
#   return array
# end

# puts fizz_buzz(35)


# def beer_song(num)
#   until num == 2
#     puts "#{num} bottles of beer on the wall, #{num} bottles of beer! Take one down, pass it around, #{num - 1} bottles of bear on the wall!"
#     num -= 1
#   end
#   puts "2 bottles of beer on the wall, 2 bottles of beer! Take one down, pass it around, 1 bottle of bear on the wall!"
#   puts "1 bottle of beer on the wall, 2 bottle of beer! Take one down, pass it around, 1 bottle of bear on the wall!"
# end

# p beer_song(99)


# Write a problem that takes a price, a payment and then gives change back in the lowest materials possible.
# A muffin is 3.99 A payment is made of 10.00.
# Return back the change back using the US Money denomination.
# $100 bill, $50 bill, $20 bill, $10 bill, $5 bill, $1 bill, .25 Quarter, .10 Dime, .5 Nickel, .1 Penny

# Take the item(s) and subtract the payment

# def make_change(items, payment)
#   total_price = 0
#   count = {benji: 0, grant: 0, jackson: 0, hamilton: 0, lincoln: 0, washington: 0, quarter: 0, dime: 0, nickel: 0, penny: 0}
#   denominations = {benji: 100.00, grant: 50.00, jackson: 20.00, hamilton: 10.00, lincoln: 5.00, washington: 1.00, quarter: 0.25, dime: 0.10, nickel: 0.05, penny: 0.01}
#   if items.is_a?(Array)
#     items.each { |item| total_price = total_price + item}
#   else
#     total_price = items
#   end

#   change = payment - total_price
#   if change < 0
#     return "insufficent funds" # if payment is less than item
#   elsif change == 0
#     return "no change due"
#   end

#   denominations.each do |bill, value|
#     if change >= value
#       count[bill] = (change / value).floor # (312 divide by 300 -> 3)
#       change = change - (count[bill] * value)
#       change = change.round(2)
#     end
#   end

#   return count
# end


# Do another for Japanese Yen.
# Because the hash keys are integers, you have to use rocket arrow
# def make_change2 (items, payment)
# count = {10000 => 0, 5000 => 0, 1000 => 0, 500 => 0, 100 => 0, 50 => 0, 10 => 0, 5 => 0, 1 => 0}
# denominations = {10000 => 10000, 5000 => 5000, 1000 => 1000, 500 => 500, 100 => 100, 50 => 50, 10 => 10, 5 => 5, 1 => 1}
# total_price = 0

#   if items.is_a?(Array)
#     items.each {|item|  total_price = total_price + item}
#   else
#     total_price = items
#   end

#   change = payment - total_price

#   if change < 0
#     return "Insufficent Funds: Still need #{change * -1} more."
#   elsif change == 0
#     return "No change due. It was exact amount. Total and Payment were both #{items}."
#   end

#   denominations.each do |banknote, value|
#     if change >= value
#       count[banknote] = (change / value).floor #Example: Change was 5600 -> skips 10000, go to 5000 -> 5600 / 5000 with floor will be 1. New value for count
#       change = change - (count[banknote] * value) # 5600 = 5600 - (1 * 5000) -> 600 leftover
#       change = change.round(0)
#     end
#   end

#   result = count.select {|banknote, counter| counter >= 1}
#   return result
# end



# def make_change3 (items, payment)
#   count = {10000 => 0, 5000 => 0, 1000 => 0, 500 => 0, 100 => 0, 50 => 0, 10 => 0, 5 => 0, 1 => 0}
#   denominations = {10000 => 10000, 5000 => 5000, 1000 => 1000, 500 => 500, 100 => 100, 50 => 50, 10 => 10, 5 => 5, 1 => 1}

# total_price = 0
# if items.is_a?(Array)
#   items.each {|item| total_price += item}
# else
#   total_price = items
# end

# change = payment - total_price

# if change < 0
#   return "Insufficent Payment. Still require #{change * -1}."
# elsif change == 0
#   return "Exact Amount. Total was #{total_price} and Payment was #{payment}."
# end

# denominations.each do |banknote, value|
#   if change >= value
#   count[banknote] = (change / value).floor # if change was 3445 -> (3445 divide by 1000 and return 3)
#   change -= (count[banknote] * banknote) # can also multipy by value
#   end
# end

# result = count.select {|banknote, counter| counter >= 1}
# return result
# end



# def running_sums(nums)
#   result = []
#   sum = 0
#   nums.each do |num|
#       sum += num
#       result.push(sum)
#   end
#   return result
# end

# p running_sums([1,2,3,4,5])
