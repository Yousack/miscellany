n = gets.to_i

n.times do |i|

  if (i+1)%15 == 0
    puts("#{i+1}アホワン!")
  elsif (i+1)%5 == 0
    puts("#{i+1}ワン")
  elsif (i+1)%3 == 0 || (i+1).to_s.include?("3")
    puts("#{i+1}アホ!")
  else
    puts("#{i+1}")
  end
end
