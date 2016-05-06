n = gets.to_i

1.upto n do |i|

  if i%15 == 0
    puts("#{i}アホワン!")
  elsif i%5 == 0
    puts("#{i}ワン")
  elsif i%3 == 0 || (i+1).to_s.include?("3")
    puts("#{i}アホ!")
  else
    puts("#{i}")
  end
end
