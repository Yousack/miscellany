#coding: utf-8
puts "テキストファイルの行頭に行番号を付加します\nファイル名を入力してください"
filename = gets.chomp
n = 0
studentid = name = ""
loop do
  puts "学籍番号と名前も加えますか？　YES:1 NO:0"
  n = gets.to_i
  if n == 1
    puts "学籍番号，名前の順に入力してください"
    studentid = gets.chomp
    name = gets.chomp
    break
  elsif n == 0
    break
  else
    puts "1 か 0を入力してください"
  end
end

File.open(filename) { |r|
  File.open("#{File.basename(filename, '.*')}_numbered.txt", 'w') { |w|
    if n == 1
      w.write("学籍番号：#{studentid}　名前：#{name}\n\n")
    end
    w.write("-----+------------------------------------------------\n")
    k = "1"
    r.each_line do |l|
      w.write("#{k.rjust(4)} | #{l.chomp}\n")
      k.next!
    end
    w.write("-----+------------------------------------------------")
  }
}

puts "行数を付加した txt ファイルを，このプログラムが置かれているフォルダ内に作成しました．"
