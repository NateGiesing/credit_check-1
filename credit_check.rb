puts "Please enter a card number for verification:"
card_number = gets.chomp

card_number = card_number.reverse!
counter = 0
sum = 0

card_number.chars.each do |num|
  if counter.odd?
    counter += 1
    if num.to_i > 4
      big_odd = (num.to_i * 2).to_s
      big_odd.chars.each do |num|
      sum += num.to_i
      end
    else
      sum += num.to_i * 2
    end
  else
    counter += 1
    sum += num.to_i
  end
end

if sum % 10 == 0
  puts "This number is valid!"
else
  puts "This number is not valid!"
end
