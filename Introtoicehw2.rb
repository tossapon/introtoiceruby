#5631246121 Tossapon Rattnajangwang
#5631281021 Parnchanok Skulbenja


#import CSV File
require 'csv'
data = CSV.read('data.csv')
score = Array.new(data.length-1)
color = Array.new(data.length-1)


#Welcome Messege
34.times { print "**" }
puts ""
puts "		Hello, Welcome to the program."
34.times { print "**" }
puts ""

puts "Seclect options:"
puts "1.Find out who got Highest and Lowest score in the class."
puts "2.Calculate mean of all student’s scores"
puts "3.Find out the most and the least popular color."
puts "4.Capitalization names."

#Get input from user
puts ""
print "You have select #"
select = gets.chomp.to_i






#User input 1
if ( select == 1 )
	puts ">>>"
	puts "These are the student's scores."
		for num in 1...data.length
		score[num-1] = data[num][1]
		print "" + score[num-1] +" "
	end
	puts ""
	puts ""
	minmax = score.minmax

	for num in 1...data.length 
		if (minmax[0] == data[num][1])
			minmax[0] = data[num][0]
			puts minmax[0] + " got the lowest score."
		elsif (minmax[1] == data[num][1])
			minmax[1] = data[num][0]
			puts minmax[1] + " got the highest score."
		end
	end
end







#User input 2
if ( select == 2 )
	puts ">>>"
	mean = 0
	for num in 1...data.length
		score[num-1] = data[num][1]
		mean = mean + score[num-1].to_i	
	end
	print "The mean of all student’s scores is "
	puts mean/5
end






#User input 3
if (select == 3)
	puts ">>>"
	for num in 1...data.length
		color[num-1] = data[num][2]
	end

  count = Hash.new(0)
  color.each {|word| count[word] += 1}
  most, unused = count.first
  print "The most favourite color is " 
  puts most

  least, unused = count.to_a.last
  print "The least favourite color is " 
  puts least


end





#User input 4
if (select == 4)
	puts ">>>"
	for num in 1...data.length
	puts data[num][0].reverse.split(/\b/).map(&:capitalize).join.reverse
	end
end




puts ""
puts "End of the program."
puts ""

