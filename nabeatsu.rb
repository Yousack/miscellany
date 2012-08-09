n = gets.to_i

n.times do |i|
  if (i+1)%3 == 0 || (i+1).to_s.include?("3")
    print("#{i+1}!! ")
  else
    print("#{i+1} ")
  end
end