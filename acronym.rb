#coding: utf-8

ac2 = []
ac3 = []
ac4 = []

for i in 'A'..'Z'
  for j in 'A'..'Z'
    ac2.push(i+j+" ")
  end
end

for i in 'A'..'Z'
  for j in 'A'..'Z'
    for k in 'A'..'Z'
      ac3.push(i+j+k+" ")
    end
  end
end

for i in 'A'..'Z'
  for j in 'A'..'Z'
    for k in 'A'..'Z'
      for l in 'A'..'Z'
        ac4.push(i+j+k+l+" ")
      end
    end
  end
end

f = open("acronym.txt", 'w')
f.print ac2
f.print "\n\n"
f.print ac3
f.print "\n\n"
f.print ac4
