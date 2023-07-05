monster = "ピ チュウ"
puts "#{monster}が出た！"

monster_total_hp = 100
pokemon_total_hp = 100
money = 500

while true
    puts "■何をする？"
    puts "1: たたかう！"
    puts "2: アイテムを使う"

    puts = "1 or 2 ?"
    select = gets

    monster_damage = (1..90).to_a
    pokemon_damage = (1..90).to_a
    case select
    when "1\n"
        monster_damaged = monster_damage.sample
        pokemon_damaged = pokemon_damage.sample
        pokemon_total_hp -= monster_damaged
        monster_total_hp -= pokemon_damaged
        if pokemon_total_hp >= 0 && monster_total_hp >= 0
            puts "ピ チュウはリンリンに#{monster_damaged}のダメージを与えた"
            puts "リンリンのHPは#{pokemon_total_hp}になった"
            puts "リンリンはピカチュウに#{pokemon_damaged}のダメージを与えた"
            puts "ピ チュウのHPは#{ monster_total_hp}になった"
        elsif pokemon_total_hp < 0
            puts "ピ チュウはリンリンに#{monster_damaged}のダメージを与えた"
            puts "リンリンは死んだ！"
            puts "残念！あなたの負け！"
            break
        elsif  monster_total_hp < 0
            puts "ピ チュウはリンリンに#{monster_damaged}のダメージを与えた"
            puts "リンリンのHPは#{pokemon_total_hp}になった"
            puts "リンリンはピカチュウに#{pokemon_damaged}のダメージを与えた"
            puts "ピ チュウは死んだ！"
            puts "あなたの勝利！"
            break
        end       
    end
end
