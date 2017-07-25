user_name,pass,sport = ARGV
promt  = ">>"
promt2  = "-"
flag = 0;

class Object
  def is_number?
    self.to_f.to_s == self.to_s || self.to_i.to_s == self.to_s
  end

  def Decrease(arr)
	temp = 0
	arr.each do |i|
		i=0
		j=1
	while (j < arr.length)
	if(arr[j] > arr[i])
		temp = arr[i]
		arr[i] = arr[j]
		arr[j] = temp
	end
		i = i+1
		j = j+1
	end
	end
	puts arr
end

def Increase(arr)
	temp = 0
	arr.each do |i|
		i=0
		j=1
	while (j < arr.length)
	if(arr[j] < arr[i])
		temp = arr[i]
		arr[i] = arr[j]
		arr[j] = temp
	end
		i = i+1
		j = j+1
	end
	end
	puts "Your array sorted is #{arr}"
end

def Add(a,b)
	puts "RESULT: #{a} + #{b} = #{a+b}"
end

def Sub(a,b)
	puts "RESULT: #{a} - #{b} = #{a-b}"
end

def Mul(a,b)
	puts "RESULT: #{a} * #{b} = #{a*b}"
end

def Div(a,b)
	puts "RESULT: #{a} / #{b} = #{a/b}"
end

def Mod(a,b)
	puts "RESULT: #{a} % #{b} = #{a%b}"
end

def Pow(a,b)
	puts "RESULT: #{a} ^ #{b} = #{a**b}"
end

def Continue
	print "Press enter to continue"
	$stdin.gets
end
end

puts promt2*15
puts "Hello guess"
puts promt2*15

puts "Please type password"
printf promt
password = $stdin.gets.chomp

while password != pass do
	puts "WRONG"
	flag +=1;
	if(flag == 3)
		puts "WRONG 3 times"
		exit
	end
	puts "Please type again"
	printf promt
	password = $stdin.gets.chomp
end
puts "Access"

puts promt2*30
puts "Hello #{user_name}!!! I'd like ask you few questions "
puts promt2*30

puts "How old are you"
printf promt
age = $stdin.gets.chomp
puts promt2*15

begin
	age = Integer(age)
	until age > 10 && age <100 do
		puts "Your age is not to acces"
		printf promt
		age = $stdin.gets.chomp.to_i
	end
rescue 
	puts "Please enter an integer number"
	printf promt
	age = $stdin.gets.chomp
	retry
end

puts "How many sports do u like ?"
printf promt
n = $stdin.gets.chomp
puts promt2*15

while not n =~ /^[0-9]+$/ do
	puts "Invalid,\nPlease type again"
	printf promt
	n = $stdin.gets.chomp
end
n=Integer(n)

puts "What 's it ???"
sports = Array.new(n)
for i in 0..n-1
	printf promt
	sports[i] = $stdin.gets.chomp
	puts promt2*15
end

sports = sports.uniq
puts "Your sports is: #{sports}"

sports.each do |f|
if(f == sport)
	puts "Great, I like #{f} ,too!!!"
end
end

puts promt2*30
Continue()
puts promt2*30

puts "Please type element numbers"
printf promt
numbers = $stdin.gets.chomp
puts promt2*15

while not numbers.is_number? do
	puts"Please type number"
	printf promt
	numbers = $stdin.gets.chomp
end
while(numbers.to_i <2)

	puts "Element number must be > 2"
	puts "Please type again"
	printf promt
	numbers = $stdin.gets.chomp
end

begin
puts "Please type start"
printf promt
startNum = $stdin.gets.chomp
puts promt2*15

while not startNum.is_number? do
	puts"Please type number"
	printf promt
	startNum = $stdin.gets.chomp
end

puts "Please type endS"
printf promt
endNum = $stdin.gets.chomp
puts promt2*15

while not endNum.is_number? do
	puts"Please type number"
	printf promt
	endNum = $stdin.gets.chomp
end

numbers = numbers.to_i
startNum = startNum.to_i
endNum = endNum.to_i
end while startNum >= endNum

rndnum = Array.new(numbers) { rand(startNum...endNum) }
puts "Your numbers is \n #{rndnum}"
puts promt2*15

puts "Please choose numbers"
puts "1.Increas\n2.Decrease"
printf promt
choice = $stdin.gets.chomp.to_i

if(choice == 1)
	puts promt2*80
	Increase(rndnum)
elsif(choice == 2)
	puts promt2*100
	Decrease(rndnum)
end

puts "\n\n\n"
puts promt2*80
Continue()
puts promt2*80

puts "What calculation do you want?"
puts "1.Add\n2.Sub\n3.Mul\n4.Div\n5.Mod\n6.Pow"
printf promt
choice = $stdin.gets.chomp.to_i
puts promt2*15

begin
	puts "Please type number 1"
	printf promt
	num1 = $stdin.gets.chomp
end while not num1 =~ /^[0-9]|\.+$/

begin
	puts "Please type number 2"
	printf promt
	num2 = $stdin.gets.chomp
	puts promt2*15
end while not num2 =~ /^[0-9]|\.+$/
num1 = num1.to_f
num2 = num2.to_f

case choice
	when 1
		Add(num1,num2)
	when 2
		Sub(num1,num2)
	when 3
		Mul(num1,num2)
	when 4
		Div(num1,num2)
	when 5
		Mod(num1,num2)
	when 6
		Pow(num1,num2)
end

