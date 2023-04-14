monster = "usagi-nu"
select = ""

while true
puts "#{monster}が出た！"
puts "■何をする？"
puts "1: たたかう！"
puts "2: アイテムを使う"

puts = "1 or 2 ?"
serect = gets

damage = (1..90).to_a
if serect == "1\n"
    dg = damage.sample
    puts "リンリンに#{dg}のダメージを与えた"
end

end
